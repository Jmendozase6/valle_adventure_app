import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class CtaButtonFilled extends StatelessWidget {
  const CtaButtonFilled({super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 50.h,
      child: FilledButton(
        onPressed: onPressed,
        style: const ButtonStyle().copyWith(
          backgroundColor: const WidgetStatePropertyAll(AppColors.darkColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
            ),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.heading03(color: AppColors.lightColor),
        ),
      ),
    );
  }
}
