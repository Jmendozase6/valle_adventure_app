import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/custom_app_bar.dart';
import 'package:valle_adventure_app/features/tour/widgets/card_tour_default_image.dart';

class PlaceDetailsScreen extends StatelessWidget {
  const PlaceDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
