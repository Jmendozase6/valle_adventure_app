import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      body: const _SignInView(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AccountLink(
            text: AppLocalizations.of(context)!.not_have_account,
            ctaText: AppLocalizations.of(context)!.sign_up,
            route: AppRoutes.signUp.name,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _SignInView extends ConsumerWidget {
  const _SignInView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderImage(
            title: locale.welcome_again,
            subtitle: locale.sign_in_to_continue,
          ),
          // Bug
          const SizedBox(height: 16),
          CustomInput(
            labelText: locale.email,
          ),
          // Bug
          const SizedBox(height: 16),
          CustomInputPassword(
            labelText: locale.password,
          ),
          const SizedBox(height: 8),
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
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: CtaButtonFilled(
              text: locale.forward,
              onPressed: () {
                ref.read(routerProvider).goNamed(AppRoutes.home.name);
              },
            ),
          ),
          const SizedBox(height: 16),
          const AccessUsing(),
          const SizedBox(height: 16),
          ButtonSocialMedia(
            text: locale.sign_in_with_google,
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
