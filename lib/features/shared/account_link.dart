import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class AccountLink extends ConsumerWidget {
  const AccountLink({
    super.key,
    required this.text,
    required this.ctaText,
    this.route,
    this.isPop = false,
  });

  final String text, ctaText;
  final String? route;
  final bool isPop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.subtitle(fontWeight: FontWeight.normal),
        ),
        TextButton(
          onPressed: () {
            isPop ? router.pop() : router.pushNamed(route!);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            ctaText,
            style: AppStyles.subtitle(color: AppColors.mainColor),
          ),
        )
      ],
    );
  }
}
