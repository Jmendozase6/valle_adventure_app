import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/supabase_auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

final authRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = SupabaseAuthDataSourceImpl();
  return AuthRepositoryImpl(datasource: datasource);
});

/// Get the current user using the [AuthRepository] - [FutureProvider]
///
/// Returns a [User] with the current user
final currentUserProvider = FutureProvider.autoDispose<EitherStringUserModel>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return authRepository.getCurrentUser();
  },
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource datasource;
  final signUpEmailController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpNameController = TextEditingController();
  final signUpLastNameController = TextEditingController();
  final signInEmailController = TextEditingController();
  final signInPasswordController = TextEditingController();

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
  EitherStringBool signInWithGoogle() {
    throw UnimplementedError();
  }

  @override
  bool isAuthenticated() => datasource.isAuthenticated();

  @override
  Future<void> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
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
}
