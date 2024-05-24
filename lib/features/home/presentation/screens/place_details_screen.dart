import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
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
        // TODO: fix place_detaails
        title: AppLocalizations.of(context)!.place_detaails,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: CtaButtonFilled(text: 'Reservar', onPressed: () {}),
      ),
    );
  }
}

class _PlaceDetailsView extends StatelessWidget {
  const _PlaceDetailsView({required this.tour});

  // Temporary properties
  final Tour tour;

  @override
  Widget build(BuildContext context) {
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
              location: tour.idDepartment.substring(0, 10),
              // TODO: Change this to the real value
              reviewsAmount: tour.rating.toInt(),
              stars: tour.rating,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            Column(
              children: [
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {},
                  elevation: 0,
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return const ListTile(
                          title: Text('Itinerario'),
                        );
                      },
                      body: const ListTile(
                        title: Text('Item 1 child'),
                        subtitle: Text('Details goes here'),
                      ),
                      isExpanded: false,
                    ),
                    if (tour.important.isNotEmpty)
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text('Importante'),
                          );
                        },
                        body: const ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      ),
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return const ListTile(
                          title: Text('Recomendaciones'),
                        );
                      },
                      body: const ListTile(
                        title: Text('Item 2 child'),
                        subtitle: Text('Details goes here'),
                      ),
                      isExpanded: false,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
