import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccessUsing extends StatelessWidget {
  const AccessUsing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 0.2.sw, child: const Divider()),
        Text(AppLocalizations.of(context)!.access_using),
        SizedBox(width: 0.2.sw, child: const Divider()),
      ],
    );
  }
}
