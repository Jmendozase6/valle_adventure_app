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
    return Column(
      children: [
        // Language
        ListTile(
          title: const Text('Lenguaje'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.language.name),
        ),
        // Notifications
        ListTile(
          title: const Text('Notificaciones'),
          trailing: Switch(value: true, onChanged: (value) {}),
        ),
        // Privacy
        ListTile(
          title: const Text('Privacidad'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.privacy.name),
        ),
        // Terms and conditions
        ListTile(
          title: const Text('Términos y condiciones'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.terms.name),
        ),
        // About
        ListTile(
          title: const Text('Acerca'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => router.pushNamed(AppRoutes.about.name),
        ),
        // Logout or Sign in
      ],
    );
  }
}
