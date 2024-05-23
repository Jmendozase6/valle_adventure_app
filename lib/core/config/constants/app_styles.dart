import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class AppStyles {
  static TextStyle title({Color? color}) => TextStyle(fontSize: 45.sp, color: color);

  static TextStyle onboardingSubtitle({Color? color}) => TextStyle(
        fontSize: 20.sp,
        color: color ?? AppColors.whiteColor,
      );

  static TextStyle button({Color? color}) => TextStyle(fontSize: 16.sp, color: color);

  static TextStyle subtitle({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 14.sp,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w600,
      );

  static TextStyle body({Color? color}) => TextStyle(
        fontSize: 12.sp,
        color: color,
      );
}
