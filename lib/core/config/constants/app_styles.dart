import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle title({Color? color}) => TextStyle(fontSize: 20.sp, color: color);

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
