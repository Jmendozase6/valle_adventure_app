import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/providers/providers.dart';

// ignore: must_be_immutable
class CustomInputPassword extends ConsumerWidget {
  const CustomInputPassword({
    super.key,
    required this.labelText,
    this.controller,
    this.padding,
  });

  final String labelText;
  final TextEditingController? controller;
  final double? padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.watch(customPasswordProvider);
    final locale = AppLocalizations.of(context)!;

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
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              right: AppConstants.defaultPaddingHorizontal * 0.5,
            ),
            child: GestureDetector(
              onTap: () {
                ref.read(customPasswordProvider.notifier).update((state) => !state);
              },
              child: Icon(
                password ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
              ),
            ),
          ),
        ),
        obscureText: password,
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
