import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.recommended_places,
      ),
      body: const _RecommendedView(),
    );
  }
}

class _RecommendedView extends ConsumerWidget {
  const _RecommendedView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourProvider = ref.watch(tourRepositoryProvider);
    final userId = ref.watch(authRepositoryProvider).getCurrentUserId().getOrElse((l) => '');

    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: CustomFutureBuilder(
        future: () => tourProvider.getTours(orderType: 'created_at', limit: 15, userId: userId),
        dataBuilder: (toursData) {
          final tours = toursData.fold(
            (error) => [Tour.empty()],
            (data) => data,
          );
          return ListView.builder(
            itemCount: tours.length,
            itemBuilder: (_, index) {
              final tour = tours[index];
              return CardTour(
                id: tour.id,
                price: tour.price,
                isLiked: tour.isLiked,
                imageUrl: tour.images.isEmpty ? AppAssets.placeholderError : tour.images.first,
                title: tour.name,
                location: tour.department,
              );
            },
          );
        },
      ),
    );
  }
}
