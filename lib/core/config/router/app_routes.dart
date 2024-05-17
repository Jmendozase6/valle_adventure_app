enum AppRoutes {
  root,
  onboarding,
  signIn,
  signUp,
  home,
  popular,
  recommended,
}

extension AppRoutesExtension on AppRoutes {
  String get name {
    switch (this) {
      case AppRoutes.root:
        return 'root';
      case AppRoutes.onboarding:
        return 'onboarding';
      case AppRoutes.signIn:
        return 'signIn';
      case AppRoutes.signUp:
        return 'signUp';
      case AppRoutes.home:
        return 'home';
      case AppRoutes.popular:
        return 'popular';
      case AppRoutes.recommended:
        return 'recommended';
    }
  }

  String get path {
    switch (this) {
      case AppRoutes.root:
        return '/';
      case AppRoutes.onboarding:
        return '/onboarding';
      case AppRoutes.signIn:
        return '/signIn';
      case AppRoutes.signUp:
        return '/signUp';
      case AppRoutes.home:
        return '/home';
      case AppRoutes.popular:
        return 'popular';
      case AppRoutes.recommended:
        return 'recommended';
    }
  }
}
