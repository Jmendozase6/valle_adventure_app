import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class ButtonSocialMedia extends StatelessWidget {
  const ButtonSocialMedia({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: AppColors.darkColor,
              ),
            SizedBox(width: AppConstants.defaultPaddingHorizontal * 0.5),
            Text(
              text,
              style: const TextStyle(color: AppColors.darkColor),
            ),
          ],
        ),
      ),
    );
  }
}
