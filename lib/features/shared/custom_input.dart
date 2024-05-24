import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';

// ignore: must_be_immutable
class CustomInput extends ConsumerWidget {
  const CustomInput({
    super.key,
    required this.labelText,
    this.controller,
    this.padding,
    this.keyboardType,
  });

  final String labelText;
  final TextEditingController? controller;
  final double? padding;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? AppConstants.defaultPaddingHorizontal),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(labelText),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
            horizontal: AppConstants.defaultPaddingHorizontal,
          ),
        ),
        keyboardType: keyboardType ?? TextInputType.emailAddress,
      ),
    );
  }
}
