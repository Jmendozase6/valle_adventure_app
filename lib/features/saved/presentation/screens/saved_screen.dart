import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.saved_paces,
      ),
      body: const _SavedView(),
    );
  }
}

class _SavedView extends ConsumerWidget {
  const _SavedView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourProvider = ref.watch(tourRepositoryProvider);
    final authRepository = ref.watch(authRepositoryProvider);

    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: authRepository.isAuthenticated()
          ? CustomFutureBuilder(
              future: () => tourProvider.getToursByUser(
                userId: authRepository.getCurrentUserId().getOrElse((l) => ''),
              ),
              dataBuilder: (toursData) {
                final tours = toursData.fold(
                  (error) => [],
                  (data) => data,
                );
                final finalTours = tours.cast<Tour>();
                return finalTours.isEmpty
                    ? EmptyListView(message: AppLocalizations.of(context)!.no_saved_tours)
                    : _SavedListView(tours: finalTours);
              },
            )
          : const NotUserLoggedView(),
    );
  }
}

class _SavedListView extends StatelessWidget {
  const _SavedListView({
    required this.tours,
  });

  final List<Tour> tours;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tours.length,
      itemBuilder: (_, index) {
        final tour = tours[index];
        return CardTour(
          id: tour.id,
          price: tour.price,
          isLiked: true,
          imageUrl: tour.images.isEmpty ? AppAssets.placeholderError : tour.images.first,
          title: tour.name,
          location: tour.department,
        );
      },
    );
  }
}
