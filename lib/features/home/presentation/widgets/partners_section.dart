import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/partners_provider.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

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
          child: SingleChildScrollView(
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
