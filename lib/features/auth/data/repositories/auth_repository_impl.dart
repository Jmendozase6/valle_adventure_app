import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/supabase_auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/domain/repositories/auth_repository.dart';

final authRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = SupabaseAuthDataSourceImpl();
  return AuthRepositoryImpl(datasource: datasource);
});

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource datasource;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

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
      (rightValue) => right(rightValue),
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
      (rightValue) => right(rightValue),
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
}
