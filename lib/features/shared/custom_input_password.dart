import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? AppConstants.defaultPaddingHorizontal),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(labelText),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
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
      ),
    );
  }
}
