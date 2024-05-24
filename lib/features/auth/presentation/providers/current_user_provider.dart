import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';
import 'auth_repository_provider.dart';

/// Get the current user using the [AuthRepository] - [FutureProvider]
///
/// Returns a [User] with the current user
final currentUserProvider = FutureProvider.autoDispose<EitherStringUserModel>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return authRepository.getCurrentUser();
  },
);
