import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/place_details_reservation_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/selected_detail_tour_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';
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

  // Temporary properties
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
              images: tour.images!,
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
                            'Información',
                            style: AppStyles.subtitle(),
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: const Text('Descripción'),
                            subtitle: Text(tour.overview),
                          ),
                          ListTile(
                            title: const Text('Importante'),
                            subtitle: Text(tour.important),
                          ),
                          ListTile(
                            title: const Text('¿Qué debes llevar?'),
                            subtitle: Text(tour.packing!),
                          ),
                          if (tour.includedItems != null && tour.includedItems!.isNotEmpty)
                            ListTile(
                              title: const Text('Incluye'),
                              subtitle: Text(tour.includedItems!),
                            ),
                          if (tour.notIncludedItems != null && tour.notIncludedItems!.isNotEmpty)
                            ListTile(
                              title: const Text('No Incluye'),
                              subtitle: Text(tour.notIncludedItems!),
                            ),
                          ListTile(
                            title: const Text('Ubicación'),
                            subtitle: Text(tour.department),
                          ),
                          ListTile(
                            title: const Text('Precio'),
                            subtitle: Text('S/ ${tour.price}'),
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
              onPressed: () async {
                if (!authProvider.isAuthenticated()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(locale.sign_in_to_reserve)));
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
