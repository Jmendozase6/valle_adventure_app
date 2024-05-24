import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
import 'package:valle_adventure_app/features/settings/providers/onboarding/presentation/providers/providers.dart';

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final authProvider = ref.watch(authRepositoryProvider);
    ScreenUtil.init(context);
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
