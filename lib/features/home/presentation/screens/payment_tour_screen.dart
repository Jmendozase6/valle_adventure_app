import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class PaymentTourScreen extends StatelessWidget {
  const PaymentTourScreen({
    super.key,
    required this.tourName,
    required this.tourPrice,
  });

  final String tourName, tourPrice;

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
  const _PaymentTourView({required this.tourName, required this.tourPrice});

  final String tourName, tourPrice;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booking = ref.watch(bookProvider);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Resumen de tu reservación'),
          const Divider(),
          RowDataInfo(title: 'Tour', value: tourName),
          RowDataInfo(title: 'Cantidad de Personas', value: '${booking.partners.length}'),
          RowDataInfo(title: 'Fecha de reserva', value: booking.reservationDate),
          RowDataInfo(title: 'Costo por persona', value: 'S/ $tourPrice'),
          const Divider(),
          const Spacer(),
          RowDataInfo(title: 'TOTAL', value: 'S/ ${tourPrice * booking.partners.length}'),
        ],
      ),
    );
  }
}

class RowDataInfo extends StatelessWidget {
  const RowDataInfo({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nombre del tour',
            style: AppStyles.heading03(color: AppColors.darkColor20),
          ),
          const Text('Precio del tour'),
        ],
      ),
    );
  }
}
