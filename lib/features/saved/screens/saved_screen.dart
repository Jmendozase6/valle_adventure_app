import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

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

class _SavedView extends StatelessWidget {
  const _SavedView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (_, index) {
          return CardTour(
            id: '$index',
            isLiked: index % 2 == 0,
            price: 10,
            imageUrl:
                'https://res.cloudinary.com/dlfoowzy4/image/upload/v1715927344/valle-adventure-test/$index.jpg',
            title: 'Montaña Bravo',
            location: 'Piura',
          );
        },
      ),
    );
  }
}
