import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.labelText,
    this.controller,
    this.padding,
    this.keyboardType,
    this.enabled,
    this.initialValue,
  });

  final String? labelText;
  final String? initialValue;
  final TextEditingController? controller;
  final double? padding;
  final TextInputType? keyboardType;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    controller?.text = controller!.text.isEmpty ? initialValue ?? '' : controller!.text;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? AppConstants.defaultPaddingHorizontal),
      child: TextFormField(
        controller: controller,
        enabled: enabled,
        decoration: InputDecoration(
          label: Text(labelText ?? ''),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
            horizontal: AppConstants.defaultPaddingHorizontal,
          ),
        ),
        keyboardType: keyboardType ?? TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return locale.input_empty;
          }
          return null;
        },
      ),
    );
  }
}
