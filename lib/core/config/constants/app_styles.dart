import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class AppStyles {
  static TextStyle title({Color? color}) => TextStyle(fontSize: 48.sp, color: color);

  static TextStyle onboardingSubtitle() => TextStyle(
        fontSize: 24.sp,
        color: AppColors.whiteColor,
      );

  static TextStyle button({Color? color}) => TextStyle(fontSize: 18.sp, color: color);

  static TextStyle subtitle({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w600,
      );

  static TextStyle body({Color? color}) => TextStyle(
        fontSize: 14.sp,
        color: color,
      );
}
