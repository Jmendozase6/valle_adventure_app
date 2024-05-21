import 'package:fpdart/fpdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/domain/repositories/auth_repository.dart';

final supabaseAuthRepositoryProvider = Provider((ref) {
  final datasource = AuthDataSourceImpl();
  return SupabaseAuthRepositoryImpl(datasource: datasource);
});

class SupabaseAuthRepositoryImpl implements AuthRepository {
  final AuthDataSource datasource;
  SupabaseAuthRepositoryImpl({required this.datasource});

  @override
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    final response = await datasource.signUp(
      email: email,
      password: password,
      name: name,
      lastName: lastName,
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
      email: email,
      password: password,
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
