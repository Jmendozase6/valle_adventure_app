import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/utils/transition/custom_transition_screen.dart';

// Screens
import 'package:valle_adventure_app/features/root/screens/screens.dart';
import 'package:valle_adventure_app/features/onboarding/screens/screens.dart';
import 'package:valle_adventure_app/features/auth/screens/screens.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: AppRoutes.root.path,
    routes: [
      GoRoute(
        path: AppRoutes.root.path,
        name: AppRoutes.root.name,
        builder: (context, state) => const AppRoot(),
      ),
      GoRoute(
        path: AppRoutes.onboarding.path,
        name: AppRoutes.onboarding.name,
        pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
          context: _,
          state: __,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signIn.path,
        name: AppRoutes.signIn.name,
        pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
          context: _,
          state: __,
          child: const SignInScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signUp.path,
        name: AppRoutes.signUp.name,
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  ),
);