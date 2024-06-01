import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class PaymentTourScreen extends StatelessWidget {
  const PaymentTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: CustomAppBar(
        title: locale.time_to_pay,
      ),
      body: const _PaymentTourView(),
    );
  }
}

class _PaymentTourView extends StatelessWidget {
  const _PaymentTourView();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text('Hola Mundo'),
          ),
        ],
      ),
    );
  }
}
