import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _SignUpView(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AccountLink(
            text: AppLocalizations.of(context)!.have_account,
            ctaText: AppLocalizations.of(context)!.sign_in,
            isPop: true,
          ),
          SizedBox(height: AppConstants.defaultPadding * 0.5),
        ],
      ),
    );
  }
}

class _SignUpView extends StatelessWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderImage(
            title: locale.join_us,
            subtitle: locale.sign_up_to_continue,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.name,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.last_names,
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPaddingHorizontal,
              vertical: AppConstants.defaultPadding * 0.5,
            ),
            child: CtaButtonFilled(
              text: locale.forward,
            ),
          ),
          SizedBox(height: AppConstants.defaultPadding),
          const AccessUsing(),
          SizedBox(height: AppConstants.defaultPadding),
          ButtonSocialMedia(
            text: locale.sign_up_with_google,
          ),
        ],
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
