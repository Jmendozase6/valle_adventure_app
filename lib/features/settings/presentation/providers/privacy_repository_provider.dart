import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/settings/data/datasources/firebase_privacy_policy_data_source.dart';
import 'package:valle_adventure_app/features/settings/data/repositories/legal_repository_impl.dart';

final legalRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = FirebaseLegalDataSource();
  return LegalRepositoryImpl(datasource: datasource);
});

// final privacyPoliciesProvider = Provider.autoDispose((ref) {
//   final privacyProvider = ref.watch(privacyRepositoryProvider);
//   return privacyProvider.getPrivacyPolicies;
// });
