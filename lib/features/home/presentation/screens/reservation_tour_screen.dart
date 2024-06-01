import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/partners_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/widgets/widgets.dart';
import 'package:valle_adventure_app/features/shared/cta_button_filled.dart';
import 'package:valle_adventure_app/features/shared/custom_app_bar.dart';
import 'package:valle_adventure_app/features/shared/custom_input.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';
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

  final String tourId, tourName, tourPrice, userId, userName, userLastName, userPhone, userIdCard;
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

  final String tourId, tourName, tourPrice, userId, userName, userLastName, userPhone, userIdCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final currentBook = ref.watch(bookProvider.notifier);

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
              CustomInput(
                labelText: locale.name,
                padding: 0,
                initialValue: userName,
                controller: currentBook.userNameController,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: locale.last_names,
                initialValue: userLastName,
                controller: currentBook.userLastNameController,
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: locale.phone,
                initialValue: userPhone,
                controller: currentBook.phoneController,
                padding: 0,
              ),
              SizedBox(height: AppConstants.defaultPadding),
              CustomInput(
                labelText: locale.id_card,
                padding: 0,
                initialValue: userIdCard,
                controller: currentBook.idCardController,
              ),
              SizedBox(height: AppConstants.defaultPadding),
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
                  ref.read(formPartnersKeyProvider).currentState?.validate();
                  final book = ref.read(bookProvider.notifier).bookTour(
                        userId: userId,
                        tourId: tourId,
                        tourPrice: tourPrice,
                        qtyPartners: ref.watch(qtyPartnersProvider),
                      );
                  // ADD TO DATABASE USING BOOK REPOSITORY
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

class PartnersSection extends ConsumerWidget {
  const PartnersSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final qtyPartners = ref.watch(qtyPartnersProvider);
    final formKey = ref.watch(formPartnersKeyProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locale.partnerts,
          style: AppStyles.heading04(),
        ),
        SizedBox(height: AppConstants.defaultPadding),
        Form(
          key: formKey,
          child: SizedBox(
            height: qtyPartners * 70.h,
            child: ListView.builder(
              itemCount: qtyPartners,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: AppConstants.defaultPadding * 0.5),
                  child: CustomInput(
                    labelText: locale.name,
                    padding: 0,
                    controller: ref.watch(bookProvider.notifier).partners[index],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
