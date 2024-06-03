import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource datasource;
  final signUpEmailController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpNameController = TextEditingController();
  final signUpLastNameController = TextEditingController();
  final signInEmailController = TextEditingController();
  final signInPasswordController = TextEditingController();

  final emailResetController = TextEditingController();

  AuthRepositoryImpl({required this.datasource});

  @override
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    final response = await datasource.signUp(
      email: email.trim(),
      password: password.trim(),
      name: name.trim(),
      lastName: lastName.trim(),
    );
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) {
        disposeControllers();
        return right(rightValue);
      },
    );
  }

  @override
  EitherStringBool signIn({
    required String email,
    required String password,
  }) async {
    final response = await datasource.signIn(
      email: email.trim(),
      password: password.trim(),
    );
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) {
        disposeControllers();
        return right(rightValue);
      },
    );
  }

  @override
  Future<void> signOut() async {
    await datasource.signOut();
  }

  @override
  EitherStringBool signInWithGoogle() async {
    final response = await datasource.signInWithGoogle();
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) {
        disposeControllers();
        return right(rightValue);
      },
    );
  }

  /// Check if the user is authenticated
  ///
  /// Returns a [bool] with the result of the operation
  @override
  bool isAuthenticated() => datasource.isAuthenticated();

  /// Reset password with email
  ///
  /// Returns a [EitherStringBool] with the result of the operation
  @override
  EitherStringBool resetPassword({required String email}) async {
    final response = await datasource.resetPassword(email: email);
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) => right(rightValue),
    );
  }

  /// Get the current user
  ///
  /// Returns a [User] with the current user
  @override
  EitherStringUserModel getCurrentUser() async {
    final response = await datasource.getCurrentUser();
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) => right(rightValue),
    );
  }

  /// Clean up the controllers
  ///
  /// This method is called when the provider is disposed
  void disposeControllers() {
    signUpEmailController.text = '';
    signUpPasswordController.text = '';
    signUpNameController.text = '';
    signUpLastNameController.text = '';
    signInEmailController.text = '';
    signInPasswordController.text = '';
  }

  @override
  EitherStringString getCurrentUserId() {
    final response = datasource.getCurrentUserId();
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) => right(rightValue),
    );
  }

  @override
  StreamSubscription<AuthState> authStateChanges({required GoRouter router}) {
    return datasource.onAuthStateChange(router: router);
  }

  @override
  EitherBool emailExists({required String email}) async {
    final response = await datasource.checkEmailExists(email: email);
    return response.fold(
      (leftValue) => left(leftValue),
      (rightValue) => right(rightValue),
    );
  }
}
