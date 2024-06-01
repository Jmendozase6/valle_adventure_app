import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/partners_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';

class PartnersDropDown extends ConsumerWidget {
  const PartnersDropDown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    return SizedBox(
      width: double.infinity,
      child: ButtonTheme(
        alignedDropdown: true,
        shape: const RoundedRectangleBorder(),
        child: DropdownButton<int>(
          value: ref.watch(qtyPartnersProvider) == 0 ? null : ref.watch(qtyPartnersProvider),
          isExpanded: true,
          hint: Text(locale.partnerts_qty),
          items: List.generate(
            5,
            (index) => index,
          )
              .map(
                (index) => DropdownMenuItem(
                  value: index,
                  child: Text('$index'),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value != null) ref.read(qtyPartnersProvider.notifier).state = value;
            ref.read(bookProvider.notifier).clearPartners();
          },
        ),
      ),
    );
  }
}
