import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/bottom_nav_provider.dart';
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
    final authProvider = ref.watch(authRepositoryProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderImage(
            title: locale.welcome_again,
            subtitle: locale.sign_in_to_continue,
          ),
          // Bug
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.email,
            controller: authProvider.signInEmailController,
          ),
          // Bug
          SizedBox(height: AppConstants.defaultPadding),
          CustomInputPassword(
            labelText: locale.password,
            controller: authProvider.signInPasswordController,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                showRecoverPassword(context);
              },
              child: Text(
                locale.forgot_password,
                style: AppStyles.heading04(
                  color: AppColors.darkColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPaddingHorizontal,
            ),
            child: CtaButtonFilled(
              text: locale.forward,
              onPressed: () async {
                final response = await authProvider.signIn(
                    email: authProvider.signInEmailController.text,
                    password: authProvider.signInPasswordController.text);
                response.fold(
                  (l) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l)));
                  },
                  (r) {
                    ref.read(routerProvider).goNamed(AppRoutes.home.name);
                    ref.read(bottomNavProvider.notifier).state = 0;
                  },
                );
                ref.read(bottomNavProvider.notifier).state = 0;
              },
            ),
          ),
          SizedBox(height: AppConstants.defaultPadding),
          const AccessUsing(),
          SizedBox(height: AppConstants.defaultPadding),
          ButtonSocialMedia(
            text: locale.sign_in_with_google,
          ),
          TextButton(
            onPressed: () {
              ref.read(routerProvider).goNamed(AppRoutes.home.name);
            },
            child: Text(locale.continue_without_sign_in),
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
