import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _SignInView(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AccountLink(
            text: AppLocalizations.of(context)!.not_have_account,
            ctaText: AppLocalizations.of(context)!.sign_up,
            route: AppRoutes.signUp.name,
          ),
          SizedBox(height: AppConstants.defaultPadding),
        ],
      ),
    );
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView();

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderImage(
              title: locale.welcome_again,
              subtitle: locale.sign_in_to_continue,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            CustomInput(
              labelText: locale.email,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            CustomInputPassword(
              labelText: locale.password,
            ),
            SizedBox(height: AppConstants.defaultPadding * 0.5),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showRecoverPassword(context);
                },
                child: Text(
                  locale.forgot_password,
                  style: AppStyles.subtitle(
                    color: AppColors.darkColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPaddingHorizontal,
                vertical: AppConstants.defaultPadding * 0.25,
              ),
              child: CtaButtonFilled(
                text: locale.forward,
              ),
            ),
            SizedBox(height: AppConstants.defaultPadding),
            const AccessUsing(),
            SizedBox(height: AppConstants.defaultPadding),
            ButtonSocialMedia(
              text: locale.sign_in_with_google,
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showRecoverPassword(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(locale.recover_password),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(locale.recover_password_desc),
            SizedBox(height: AppConstants.defaultPadding),
            CustomInput(
              labelText: locale.email,
              padding: 0,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(locale.send),
          ),
        ],
      ),
    );
  }
}
