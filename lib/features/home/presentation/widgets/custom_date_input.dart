import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';

class CustomDateInput extends ConsumerWidget {
  const CustomDateInput({
    super.key,
    this.controller,
    this.onTap,
  });

  final TextEditingController? controller;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: AppConstants.defaultPaddingHorizontal,
        ),
      ),
      onTap: onTap,
    );
  }
}
