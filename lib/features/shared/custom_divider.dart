import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

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
