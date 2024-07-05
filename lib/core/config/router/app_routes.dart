enum AppRoutes {
  root,
  onboarding,
  signIn,
  signUp,
  home,
  popular,
  recommended,
  saved,
  search,
  settings,
  placeDetails,
  profile,
  language,
  privacy,
  terms,
  about,
  bookingForm,
  payment,
  recoverPassword,
  recoverCode,
  newPassword,
  userBookings
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
      case AppRoutes.saved:
        return 'saved';
      case AppRoutes.placeDetails:
        return 'placeDetails';
      case AppRoutes.profile:
        return 'profile';
      case AppRoutes.search:
        return 'search';
      case AppRoutes.settings:
        return 'settings';
      case AppRoutes.language:
        return 'language';
      case AppRoutes.privacy:
        return 'privacy';
      case AppRoutes.terms:
        return 'terms';
      case AppRoutes.about:
        return 'about';
      case AppRoutes.bookingForm:
        return 'bookingForm';
      case AppRoutes.payment:
        return 'payment';
      case AppRoutes.recoverPassword:
        return 'recoverPassword';
      case AppRoutes.recoverCode:
        return 'recoverCode';
      case AppRoutes.newPassword:
        return 'newPassword';
      case AppRoutes.userBookings:
        return 'userBookings';
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
      case AppRoutes.saved:
        return '/saved';
      case AppRoutes.placeDetails:
        return '/placeDetails';
      case AppRoutes.search:
        return '/search';
      case AppRoutes.profile:
        return '/profile';
      case AppRoutes.settings:
        return 'settings';
      case AppRoutes.language:
        return 'language';
      case AppRoutes.privacy:
        return 'privacy';
      case AppRoutes.terms:
        return 'terms';
      case AppRoutes.about:
        return 'about';
      case AppRoutes.bookingForm:
        return '/bookingForm';
      case AppRoutes.payment:
        return 'payment';
      case AppRoutes.recoverPassword:
        return 'recoverPassword';
      case AppRoutes.recoverCode:
        return 'recoverCode';
      case AppRoutes.newPassword:
        return 'newPassword';
      case AppRoutes.userBookings:
        return '/userBookings';
    }
  }
}
