import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.settings,
      ),
      body: const _SettingsView(),
    );
  }
}

class _SettingsView extends ConsumerWidget {
  const _SettingsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        // Language
        ListTile(
          title: Text(locale.language),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.language.name),
        ),
        // Notifications
        ListTile(
          title: Text(locale.notifications),
          trailing: Switch(value: true, onChanged: (value) {}),
        ),
        // Privacy
        ListTile(
          title: Text(locale.privacy_policy),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.privacy.name),
        ),
        // Terms and conditions
        ListTile(
          title: Text(locale.terms_and_conditions),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.terms.name),
        ),
        // About
        ListTile(
          title: Text(locale.about_us),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.about.name),
        ),
        // Logout or Sign in
      ],
    );
  }
}
