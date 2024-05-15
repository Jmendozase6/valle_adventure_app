import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class ButtonSocialMedia extends StatelessWidget {
  const ButtonSocialMedia({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
      child: OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.google,
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
