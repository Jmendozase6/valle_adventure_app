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
      height: 60.h,
      child: FilledButton(
        onPressed: onPressed,
        style: const ButtonStyle().copyWith(
          backgroundColor: MaterialStateProperty.all(AppColors.darkColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
            ),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.button(color: AppColors.lightColor),
        ),
      ),
    );
  }
}
