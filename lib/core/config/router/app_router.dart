import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/utils/transition/custom_transition_screen.dart';
import 'package:valle_adventure_app/features/home/presentation/widgets/custom_bottom_navbar.dart';

// Screens
import 'package:valle_adventure_app/features/auth/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/home/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/root/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/saved/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/profile/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/settings/presentation/screens/screens.dart';
import 'package:valle_adventure_app/features/onboarding/presentation/screens/screens.dart';
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
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: PlaceDetailsScreen(
            id: state.pathParameters['id'] ?? '',
          ),
        ),
      ),
      GoRoute(
        path:
            '${AppRoutes.reservationForm.path}/:tour_id/:tour_name/:tour_price/:user_id/:user_name/:user_last_name/:user_phone/:user_id_card',
        name: AppRoutes.reservationForm.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: ReservationTourScreen(
            tourId: state.pathParameters['tour_id'] ?? '',
            tourName: state.pathParameters['tour_name'] ?? 'Error al cargar nombre del tour',
            tourPrice: state.pathParameters['tour_price'] ?? 'Error al cargar precio del tour',
            userName: state.pathParameters['user_name'] ?? '',
            userLastName: state.pathParameters['user_last_name'] ?? '',
            userId: state.pathParameters['user_id'] ?? '',
            userPhone: state.pathParameters['user_phone'] ?? '',
            userIdCard: state.pathParameters['user_id_card'] ?? '',
          ),
        ),
        routes: const [],
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
                path: AppRoutes.settings.path,
                name: AppRoutes.settings.name,
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                  context: _,
                  state: __,
                  child: const SettingsScreen(),
                ),
                routes: [
                  GoRoute(
                    path: AppRoutes.about.path,
                    name: AppRoutes.about.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                      context: _,
                      state: __,
                      child: const AboutScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoutes.language.path,
                    name: AppRoutes.language.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                      context: _,
                      state: __,
                      child: const LanguageScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoutes.privacy.path,
                    name: AppRoutes.privacy.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                      context: _,
                      state: __,
                      child: const PrivacyScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoutes.terms.path,
                    name: AppRoutes.terms.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
                      context: _,
                      state: __,
                      child: const TermsScreen(),
                    ),
                  ),
                ],
              ),
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
            path: AppRoutes.profile.path,
            name: AppRoutes.profile.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
              context: _,
              state: __,
              child: const ProfileScreen(),
            ),
          ),
          GoRoute(
            path: AppRoutes.saved.path,
            name: AppRoutes.saved.name,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (_, __) => buildPageWithDefaultTransition<void>(
              context: _,
              state: __,
              child: const SavedScreen(),
            ),
          ),
        ],
      )
    ],
  ),
);
