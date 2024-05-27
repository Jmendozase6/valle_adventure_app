import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class AuthDataSource {
  /// Sign in with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  EitherStringBool signIn({
    required String email,
    required String password,
  });

  /// Sign up with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  });

  /// Sign in with Google
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  EitherStringBool signInWithGoogle();

  /// Sign out
  ///
  /// No return value
  Future<void> signOut();

  /// Reset password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  Future<EitherStringBool> resetPassword({required String email});

  /// Check if the user is authenticated
  ///
  /// Returns a [Future<bool>] with the result of the operation
  bool isAuthenticated();

  /// Get the current user
  ///
  /// Returns a [User] with the current user
  EitherStringUserModel getCurrentUser();

  /// Get the current user id
  ///
  /// Returns a [String] with the current user id
  EitherStringString getCurrentUserId();
}
