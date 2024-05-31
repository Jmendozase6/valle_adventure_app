import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/shared/cta_button_filled.dart';
import 'package:valle_adventure_app/features/shared/custom_app_bar.dart';
import 'package:valle_adventure_app/features/shared/custom_input.dart';

class ReservationTourScreen extends StatelessWidget {
  const ReservationTourScreen({
    super.key,
    required this.tourId,
    required this.tourName,
    required this.userName,
    required this.userLastName,
  });

  final String tourId, tourName, userName, userLastName;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: CustomAppBar(
        title: locale.book_tour_now,
      ),
      body: _ReservationTourView(
        tourId: tourId,
        tourName: tourName,
        userName: userName,
        userLastName: userLastName,
      ),
    );
  }
}

class _ReservationTourView extends StatelessWidget {
  const _ReservationTourView({
    required this.tourId,
    required this.tourName,
    required this.userName,
    required this.userLastName,
  });

  final String tourId, tourName, userName, userLastName;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Translated text
              SizedBox(height: AppConstants.defaultPadding),
              Text(
                locale.personal_information,
                style: AppStyles.heading04(),
              ),

              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: userName,
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: userLastName,
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              Text(
                locale.tour_information,
                style: AppStyles.heading04(),
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: tourName,
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),

              /// TODO: Add a dropdown to select the number of partners
              CustomInput(
                labelText: locale.partnerts_qty,
                padding: 0,
                keyboardType: TextInputType.number,
                // Add validator
              ),
              SizedBox(height: AppConstants.defaultPadding),
              Text(
                locale.partnerts,
                style: AppStyles.heading04(),
              ),
              SizedBox(height: AppConstants.defaultPadding),
              // TODO: Depends on the number of partners the user wants to add
              CustomInput(
                labelText: locale.name,
                padding: 0,
                // Add validator
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CtaButtonFilled(text: locale.continue_btn, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
