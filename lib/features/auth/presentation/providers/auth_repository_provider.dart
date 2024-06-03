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

// /// Recover password provider
// ///
// /// Returns a [RecoverPasswordProvider]
// final resetPasswordProvider = Provider.autoDispose<Future<bool>>((ref) async {
//   final auth = ref.watch(authRepositoryProvider);
//   final response = await auth.resetPassword(email: auth.emailResetController.text);
//   return response.fold(
//     (leftValue) {
//       return false;
//     },
//     (rightValue) {
//       return true;
//     },
//   );
// });
