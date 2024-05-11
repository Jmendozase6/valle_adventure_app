import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/onboarding/providers/providers.dart';

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return Scaffold(
      body: ref.watch(onboardingProvider).when(
            data: (value) {
              Future.delayed(Duration.zero, () {
                value
                    ? router.goNamed(AppRoutes.signIn.name)
                    : router.goNamed(AppRoutes.onboarding.name);
              });
              return const SizedBox();
            },
            error: (_, __) => const Text('Error'),
            loading: () => const SizedBox(),
          ),
    );
  }
}
