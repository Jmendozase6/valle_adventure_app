import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/supabase_auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/data/repositories/repositories.dart';

/// Provider for the [AuthRepository]
///
/// Returns an [AuthRepository]
final authRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = SupabaseAuthDataSourceImpl();
  return AuthRepositoryImpl(datasource: datasource);
});
