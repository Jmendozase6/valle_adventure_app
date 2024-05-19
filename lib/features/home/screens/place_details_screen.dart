import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/widgets/card_tour_default_image.dart';

class PlaceDetailsScreen extends ConsumerWidget {
  const PlaceDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.place_detaails,
      ),
      body:
          // TODO: Implement the view to show the place details

          // When has data to show
          _PlaceDetailsView(id: id),

      // When is loading
      // _LoadingView(),

      // When has error
      // _ErrorView(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: CtaButtonFilled(text: 'Reservar', onPressed: () {}),
      ),
    );
  }
}

class _PlaceDetailsView extends StatelessWidget {
  const _PlaceDetailsView({required this.id});

  // Temporary properties
  final String id;

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
              images: [
                'https://res.cloudinary.com/dlfoowzy4/image/upload/v1715927344/valle-adventure-test/$id.jpg',
                'https://res.cloudinary.com/dlfoowzy4/image/upload/v1715927344/valle-adventure-test/10.jpg',
              ],
              title: 'MONTAÑA BRAVO',
              location: 'Piura, Perú',
              reviewsAmount: 10,
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
