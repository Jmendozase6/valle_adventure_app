enum AppRoutes {
  onboarding,
  signIn,
  signUp,
}

extension AppRoutesExtension on AppRoutes {
  String get name {
    switch (this) {
      case AppRoutes.onboarding:
        return 'onboarding';
      case AppRoutes.signIn:
        return 'signIn';
      case AppRoutes.signUp:
        return 'signUp';
    }
  }

  String get path {
    switch (this) {
      case AppRoutes.onboarding:
        return '/onboarding';
      case AppRoutes.signIn:
        return '/signIn';
      case AppRoutes.signUp:
        return '/signUp';
    }
  }
}
