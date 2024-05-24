import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class NotUserLoggedView extends ConsumerWidget {
  const NotUserLoggedView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.noLoggedUser,
              width: 0.7.sw,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            Text(
              AppLocalizations.of(context)!.not_logged_message,
              style: AppStyles.button(color: AppColors.darkColor),
            ),
            TextButton(
              onPressed: () => router.pushNamed(AppRoutes.signIn.name),
              child: Text(
                AppLocalizations.of(context)!.sign_in,
                style: AppStyles.button(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
