import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class AppStyles {
  static TextStyle heading01({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 45.sp,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle heading02({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 20.sp,
        color: color ?? AppColors.whiteColor,
        fontWeight: fontWeight,
      );

  static TextStyle heading03({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle heading04({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 14.sp,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w600,
      );

  static TextStyle body({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 12.sp,
        color: color,
        fontWeight: fontWeight,
      );
}
