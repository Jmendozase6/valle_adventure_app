import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pay/pay.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/home/data/repositories/default_google_pay.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/widgets/widgets.dart';
import 'package:valle_adventure_app/features/payment/data/models/payment_model.dart';
import 'package:valle_adventure_app/features/payment/presentation/providers/payment_repository_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class PaymentTourScreen extends StatelessWidget {
  const PaymentTourScreen({
    super.key,
    required this.tourName,
    required this.tourPrice,
  });

  final String tourName;
  final double tourPrice;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(
        title: locale.time_to_pay,
      ),
      body: _PaymentTourView(
        tourPrice: tourPrice,
        tourName: tourName,
      ),
    );
  }
}

class _PaymentTourView extends ConsumerWidget {
  const _PaymentTourView({
    required this.tourName,
    required this.tourPrice,
  });

  final String tourName;
  final double tourPrice;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final booking = ref.watch(bookProvider);
    final total = tourPrice * (booking.partners.length + 1);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: AppConstants.defaultPadding),
        Text(
          locale.reservation_summary,
          style: AppStyles.heading03(
            color: AppColors.darkColor,
          ),
        ),
        const _CustomDivider(),
        RowDataInfo(title: 'Tour', value: tourName),
        RowDataInfo(title: 'Cantidad de Personas', value: '${booking.partners.length + 1}'),
        RowDataInfo(title: 'Fecha de reserva', value: booking.reservationDate),
        RowDataInfo(title: 'Costo por persona', value: 'S/ $tourPrice'),
        const _CustomDivider(),
        const Spacer(),
        RowDataInfo(title: 'TOTAL', value: 'S/ $total', fontWeightTitle: FontWeight.bold),
        const _CustomDivider(),
        // Padding(
        //   padding: EdgeInsets.symmetric(
        //     horizontal: AppConstants.defaultPaddingHorizontal,
        //   ),
        //   child: CtaButtonFilled(
        //     text: locale.pay_now,
        //     onPressed: () {},
        //   ),
        // ),
        PaymentButton(tourName: tourName, total: total),
        SizedBox(height: AppConstants.defaultPadding),
      ],
    );
  }
}

class PaymentButton extends ConsumerWidget {
  const PaymentButton({
    super.key,
    required this.tourName,
    required this.total,
  });

  final String tourName;
  final double total;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GooglePayButton(
      paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
      type: GooglePayButtonType.buy,
      theme: GooglePayButtonTheme.light,
      cornerRadius: AppConstants.defaultRadius.toInt(),
      width: double.infinity,
      onPaymentResult: (paymentResult) => onGooglePayResult(paymentResult, context, ref),
      onError: (error) {
        log('ERROR $error');
      },
      onPressed: () {
        log('PRESSED');
      },
      loadingIndicator: const Center(
        child: CircularProgressIndicator(),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPaddingHorizontal,
      ),
      paymentItems: [
        PaymentItem(
          label: tourName,
          amount: total.toString(),
          status: PaymentItemStatus.final_price,
        ),
      ],
    );
  }

  void onGooglePayResult(paymentResult, BuildContext context, WidgetRef ref) async {
    // Send the resulting Google Pay token to your server / PSP
    log('AYUDA $paymentResult');
    final locale = AppLocalizations.of(context)!;
    final bookingTour = ref.watch(bookProvider.notifier);
    final paymentModel = PaymentModel.fromJson(paymentResult);
    final billingAddres = paymentModel.paymentMethodData.info.billingAddress;

    final reserveTourResponse =
        await ref.watch(reserveTourProvider).call(booking: bookingTour.tourBook);

    final billingAddressResponse = await ref.watch(billingAddressProvider).call(
          billingAddress: BillingAddress(
            address1: billingAddres.address1,
            countryCode: billingAddres.countryCode,
            locality: billingAddres.locality,
            name: billingAddres.name,
            phoneNumber: billingAddres.phoneNumber,
            postalCode: billingAddres.postalCode,
          ),
        );

    final billingAddressId = billingAddressResponse.getOrElse((l) => '');
    final bookingId = reserveTourResponse.getOrElse((l) => '');

    if (billingAddressId.isNotEmpty) {
      await ref.watch(savePaymentProvider).call(
            bookingId: bookingId,
            userId: bookingTour.tourBook.userId,
            billingAddressId: billingAddressId,
            total: bookingTour.tourBook.total,
            status: 'Paid',
            invoiceType: 'Boleta',
            provider: 'Google',
            paymentResult: PaymentModel.fromJson(paymentResult),
          );
    }

    reserveTourResponse.fold(
      (l) => log('ERROR $l'),
      (r) {
        log('SUCCESS $r');
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: Text(locale.success_payment),
            content: Text(locale.payment_grateful),
            actions: [
              TextButton(
                onPressed: () => context.goNamed(AppRoutes.home.name),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPaddingHorizontal,
        vertical: AppConstants.defaultPadding * 0.5,
      ),
      child: const Divider(),
    );
  }
}
