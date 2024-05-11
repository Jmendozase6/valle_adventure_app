import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class NameLocation extends StatelessWidget {
  final String location;
  final Color? textColor;

  const NameLocation({
    super.key,
    required this.location,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.locationDot,
          color: AppColors.mainColor,
          size: 20.sp,
        ),
        SizedBox(width: AppConstants.defaultPadding * 0.5.w),
        Text(
          location,
          style: AppStyles.body(color: textColor),
        ),
      ],
    );
  }
}
