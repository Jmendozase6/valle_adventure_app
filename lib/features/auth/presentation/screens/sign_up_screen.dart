import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
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

class _SignUpView extends ConsumerWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final authProvider = ref.watch(authRepositoryProvider);
    final formKey = ref.watch(signUpFormKeyProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderImage(
            title: locale.join_us,
            subtitle: locale.sign_up_to_continue,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          Form(
            key: formKey,
            child: Column(
              children: [
                CustomInput(
                  labelText: locale.name,
                  controller: authProvider.signUpNameController,
                ),
                SizedBox(height: AppConstants.defaultPadding),
                CustomInput(
                  labelText: locale.last_names,
                  controller: authProvider.signUpLastNameController,
                ),
                SizedBox(height: AppConstants.defaultPadding),
                CustomInput(
                  labelText: locale.email,
                  controller: authProvider.signUpEmailController,
                ),
                SizedBox(height: AppConstants.defaultPadding),
                CustomInputPassword(
                  labelText: locale.password,
                  controller: authProvider.signUpPasswordController,
                ),
              ],
            ),
          ),
          SizedBox(height: AppConstants.defaultPadding * 0.5),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPaddingHorizontal,
              vertical: AppConstants.defaultPadding * 0.5,
            ),
            child: CtaButtonFilled(
              text: locale.forward,
              onPressed: () async {
                final isValidForm = formKey.currentState?.validate() ?? false;
                if (!isValidForm) return;
                final response = await authProvider.signUp(
                  email: authProvider.signUpEmailController.text,
                  password: authProvider.signUpPasswordController.text,
                  name: authProvider.signUpNameController.text,
                  lastName: authProvider.signUpLastNameController.text,
                );
                response.fold(
                  (l) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l)));
                  },
                  (r) {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text('Éxito'),
                        content: Text(
                            'Se creó su cuenta correctamente, por favor confirme su correo electrónico'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: AppConstants.defaultPadding),
          const AccessUsing(),
          SizedBox(height: AppConstants.defaultPadding),
          ButtonSocialMedia(
            text: locale.sign_up_with_google,
            onPressed: () async {
              final authResponse = await authProvider.signInWithGoogle();
              authResponse.foldRight(true, (acc, b) {
                ref.read(routerProvider).goNamed(AppRoutes.home.name);
                return true;
              });
            },
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
