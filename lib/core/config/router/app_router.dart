import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/utils/transition/custom_transition_screen.dart';
import 'package:valle_adventure_app/features/home/widgets/custom_bottom_navbar.dart';

// Screens
import 'package:valle_adventure_app/features/auth/screens/screens.dart';
import 'package:valle_adventure_app/features/home/screens/screens.dart';
import 'package:valle_adventure_app/features/root/screens/screens.dart';
import 'package:valle_adventure_app/features/saved/screens/screens.dart';
import 'package:valle_adventure_app/features/settings/screens/screens.dart';
import 'package:valle_adventure_app/features/onboarding/screens/screens.dart';
import 'package:valle_adventure_app/features/search/screens/search_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.root.path,
    routes: [
      GoRoute(
        path: AppRoutes.root.path,
        name: AppRoutes.root.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const AppRoot(),
      ),
      GoRoute(
        path: AppRoutes.onboarding.path,
        name: AppRoutes.onboarding.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
          context: _,
          state: __,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signIn.path,
        name: AppRoutes.signIn.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
          context: _,
          state: __,
          child: const SignInScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signUp.path,
        name: AppRoutes.signUp.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
          context: _,
          state: __,
          child: const SignUpScreen(),
        ),
      ),
      GoRoute(
        path: '${AppRoutes.placeDetails.path}/:id',
        name: AppRoutes.placeDetails.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => buildPageWithDefaultTransition<void>(
          context: _,
          state: state,
          child: PlaceDetailsScreen(
            id: state.pathParameters['id'] ?? '',
          ),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (_, __, child) {
          return CustomBottomNavBar(
            body: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.home.path,
            name: AppRoutes.home.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
              context: _,
              state: __,
              child: const HomeScreen(),
            ),
            routes: [
              GoRoute(
                path: AppRoutes.popular.path,
                name: AppRoutes.popular.name,
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                  context: _,
                  state: __,
                  child: const PopularScreen(),
                ),
              ),
              GoRoute(
                path: AppRoutes.recommended.path,
                name: AppRoutes.recommended.name,
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                  context: _,
                  state: __,
                  child: const RecommendedScreen(),
                ),
              ),
              GoRoute(
                path: AppRoutes.saved.path,
                name: AppRoutes.saved.name,
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                  context: _,
                  state: __,
                  child: const SavedScreen(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: AppRoutes.search.path,
            name: AppRoutes.search.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
              context: _,
              state: __,
              child: const SearchScreen(),
            ),
          ),
          GoRoute(
            path: AppRoutes.settings.path,
            name: AppRoutes.settings.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
              context: _,
              state: __,
              child: const SettingsScreen(),
            ),
          ),
        ],
      )
    ],
  ),
);
