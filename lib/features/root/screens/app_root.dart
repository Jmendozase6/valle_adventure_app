import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/data/repositories/repositories.dart';
import 'package:valle_adventure_app/features/onboarding/providers/providers.dart';

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final authProvider = ref.watch(authRepositoryProvider);

    return Scaffold(
      body: ref.watch(onboardingProvider).when(
            data: (value) {
              Future.delayed(Duration.zero, () {
                value
                    ? {
                        if (authProvider.isAuthenticated())
                          router.goNamed(AppRoutes.home.name)
                        else
                          router.goNamed(AppRoutes.signIn.name)
                      }
                    : router.goNamed(AppRoutes.onboarding.name);
              });
              return const Scaffold();
            },
            error: (_, __) => const Scaffold(body: Text('Error')),
            loading: () => const Scaffold(body: SizedBox()),
          ),
    );
  }
}
