import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class AuthRepository {
  /// Sign in with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  /// Right(true) if the operation was successful
  /// Left(String) if the operation failed
  EitherStringBool signIn({
    required String email,
    required String password,
  });

  /// Sign up with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  /// Right(true) if the operation was successful
  /// Left(String) if the operation failed
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  });

  /// Sign in with Google
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  /// Right(true) if the operation was successful
  /// Left(String) if the operation failed
  EitherStringBool signInWithGoogle();

  /// Sign out
  ///
  /// No return value
  Future<void> signOut();

  /// Reset password
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  EitherStringBool resetPassword({required String email});

  /// Check if the user is authenticated
  ///
  /// Returns a [bool] with the result of the operation
  bool isAuthenticated();

  /// Get the current user
  ///
  /// Returns a [User] with the current user
  EitherStringUserModel getCurrentUser();

  /// Get the current user id
  ///
  /// Returns a [String] with the current user id
  EitherStringString getCurrentUserId();

  /// Listen to the authentication state
  ///
  /// Returns a [Stream] with the authentication state
  StreamSubscription<AuthState> authStateChanges({required GoRouter router});

  /// Check if email exists in the database
  ///
  /// Returns a [EitherBool] with the result of the operation
  EitherBool emailExists({required String email});
}
