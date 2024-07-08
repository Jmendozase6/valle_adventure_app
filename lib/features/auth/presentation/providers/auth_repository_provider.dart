import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/supabase_auth_data_source_impl.dart';
import 'package:valle_adventure_app/features/auth/data/repositories/repositories.dart';

/// Provider for the [AuthRepository]
///
/// Returns an [AuthRepository]
final authRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = SupabaseAuthDataSourceImpl();
  return AuthRepositoryImpl(datasource: datasource);
});

final signInFormKeyProvider = Provider<GlobalKey<FormState>>((ref) {
  return GlobalKey<FormState>();
});

final signUpFormKeyProvider = Provider<GlobalKey<FormState>>((ref) {
  return GlobalKey<FormState>();
});

final recoverPasswordProvider = Provider<GlobalKey<FormState>>((ref) {
  return GlobalKey<FormState>();
});
