import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/partners_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/widgets/widgets.dart';
import 'package:valle_adventure_app/features/shared/cta_button_filled.dart';
import 'package:valle_adventure_app/features/shared/custom_app_bar.dart';
import 'package:valle_adventure_app/features/shared/custom_input.dart';
import 'package:valle_adventure_app/utils/date/custom_date.dart';

class ReservationTourScreen extends StatelessWidget {
  const ReservationTourScreen({
    super.key,
    required this.tourId,
    required this.tourName,
    required this.userName,
    required this.tourPrice,
    required this.userLastName,
    required this.userId,
    required this.userPhone,
    required this.userIdCard,
  });

  final String tourId, tourName, userId, tourPrice, userName, userLastName, userPhone, userIdCard;
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
        tourPrice: tourPrice,
        userLastName: userLastName,
        userId: userId,
        userPhone: userPhone,
        userIdCard: userIdCard,
      ),
    );
  }
}

class _ReservationTourView extends ConsumerWidget {
  const _ReservationTourView({
    required this.tourId,
    required this.tourName,
    required this.userName,
    required this.tourPrice,
    required this.userLastName,
    required this.userId,
    required this.userPhone,
    required this.userIdCard,
  });
  final String tourId, tourName, userId, tourPrice, userName, userLastName, userPhone, userIdCard;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final currentBook = ref.watch(bookProvider.notifier);
    final router = ref.watch(routerProvider);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppConstants.defaultPadding),
              Text(
                locale.personal_information,
                style: AppStyles.heading04(),
              ),
              SizedBox(height: AppConstants.defaultPadding),
              UserDataForm(
                userName: userName,
                userLastName: userLastName,
                userPhone: userPhone,
                userIdCard: userIdCard,
              ),
              Text(
                locale.tour_information,
                style: AppStyles.heading04(),
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: locale.tour_name,
                initialValue: tourName,
                enabled: false,
                padding: 0,
                controller: currentBook.tourNameController,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomDateInput(
                controller: currentBook.dateController,
                onTap: () async {
                  final result = await customShowBoardDatePicker(
                    context: context,
                  );
                  currentBook.dateController.text = result!;
                },
              ),
              SizedBox(height: AppConstants.defaultPadding),
              const PartnersDropDown(),
              SizedBox(height: AppConstants.defaultPadding),
              if (ref.watch(qtyPartnersProvider) != 0) const PartnersSection(),
              SizedBox(height: AppConstants.defaultPadding),
              CtaButtonFilled(
                text: locale.continue_btn,
                onPressed: () {
                  final isValidPartners =
                      ref.read(formPartnersKeyProvider).currentState?.validate() ?? false;
                  final isValidUserData =
                      currentBook.userDataFormKey.currentState?.validate() ?? false;
                  final isValidDate = isValidDateTime(currentBook.dateController.text);
                  if (isValidPartners && isValidUserData && isValidDate) {
                    ref.read(bookProvider.notifier).bookTour(
                          userId: userId,
                          tourId: tourId,
                          qtyPartners: ref.watch(qtyPartnersProvider),
                        );
                    router.pushNamed(AppRoutes.payment.name, pathParameters: {
                      'tour_name': tourName,
                      'tour_price': tourPrice,
                    });
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(locale.select_valid_date)));
                  }
                },
              ),
              SizedBox(height: AppConstants.defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
