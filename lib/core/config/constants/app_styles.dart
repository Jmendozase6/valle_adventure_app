import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle title() => TextStyle(
        fontSize: 20.sp,
      );

  static TextStyle subtitle({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w600,
      );

  static TextStyle body() => TextStyle(
        fontSize: 14.sp,
      );
}
