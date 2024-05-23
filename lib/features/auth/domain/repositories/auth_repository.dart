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
  Future<void> resetPassword({required String email});

  /// Check if the user is authenticated
  ///
  /// Returns a [bool] with the result of the operation
  bool isAuthenticated();

  /// Get the current user
  ///
  /// Returns a [User] with the current user
  EitherStringUserModel getCurrentUser();
}
