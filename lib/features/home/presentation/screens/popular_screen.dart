import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.popular_places,
      ),
      body: const _PopularView(),
    );
  }
}

class _PopularView extends ConsumerWidget {
  const _PopularView();

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
        future: () => tourProvider.getTours(orderType: 'rating', limit: 15, userId: userId),
        dataBuilder: (user) {
          final tours = user.fold(
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
