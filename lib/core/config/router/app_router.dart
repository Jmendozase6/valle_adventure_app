import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';

// Screens
import 'package:valle_adventure_app/features/onboarding/screens/screens.dart';
import 'package:valle_adventure_app/features/auth/screens/screens.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: AppRoutes.onboarding.path,
    routes: [
      GoRoute(
        path: AppRoutes.onboarding.path,
        name: AppRoutes.onboarding.name,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.signIn.path,
        name: AppRoutes.signIn.name,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.signUp.path,
        name: AppRoutes.signUp.name,
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  ),
);
