import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/place_details_reservation_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/selected_detail_tour_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';
import 'package:valle_adventure_app/features/tour/presentation/widgets/widgets.dart';

class PlaceDetailsScreen extends ConsumerWidget {
  const PlaceDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourProvider = ref.watch(tourRepositoryProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.place_details,
      ),
      body: CustomFutureBuilder(
        future: () => tourProvider.getTourById(id: id),
        dataBuilder: (tour) {
          final tourSelected = tour.fold(
            (error) => Tour.empty(),
            (data) => data,
          );
          return _PlaceDetailsView(tour: tourSelected);
        },
      ),
    );
  }
}

class _PlaceDetailsView extends ConsumerWidget {
  const _PlaceDetailsView({required this.tour});

  final Tour tour;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDetail = ref.watch(selectedDetailTourProvider);
    final authProvider = ref.watch(authRepositoryProvider);
    final locale = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardTourImageDetails(
              images: tour.images,
              title: tour.name,
              location: tour.department,
              reviewsAmount: tour.rating.toInt(),
              stars: tour.rating,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            Column(
              children: [
                ExpansionPanelList(
                  elevation: 0,
                  expansionCallback: (int index, bool isExpanded) {
                    ref.read(selectedDetailTourProvider.notifier).update(
                          (state) => !state,
                        );
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            locale.information,
                            style: AppStyles.heading04(),
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text(locale.description),
                            subtitle: Text(tour.overview),
                          ),
                          ListTile(
                            title: Text(locale.important),
                            subtitle: Text(tour.important!),
                          ),
                          ListTile(
                            title: Text(locale.what_to_bring),
                            subtitle: Text(tour.packing!),
                          ),
                          if (tour.includedItems != null && tour.includedItems!.isNotEmpty)
                            ListTile(
                              title: Text(locale.included),
                              subtitle: Text(tour.includedItems!),
                            ),
                          if (tour.notIncludedItems != null && tour.notIncludedItems!.isNotEmpty)
                            ListTile(
                              title: Text(locale.not_included),
                              subtitle: Text(tour.notIncludedItems!),
                            ),
                          ListTile(
                            title: Text(locale.location),
                            subtitle: Text(tour.department),
                          ),
                          ListTile(
                            title: Text(locale.price),
                            subtitle: Text(locale.price_amount(tour.price)),
                          ),
                        ],
                      ),
                      isExpanded: selectedDetail,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: AppConstants.defaultPadding),
            CtaButtonFilled(
              text: locale.book_tour,
              onPressed: () {
                if (!authProvider.isAuthenticated()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(locale.sign_in_to_reserve)));
                  return;
                }
                ref.read(placeDetailsReservationProvider(tour));
              },
            ),
            SizedBox(height: AppConstants.defaultPadding),
          ],
        ),
      ),
    );
  }
}
