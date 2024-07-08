import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/settings/data/datasources/legal_data_source.dart';
import 'package:valle_adventure_app/features/settings/data/models/legal_model.dart';
import 'package:valle_adventure_app/features/settings/domain/entities/privacy_policy.dart';
import 'package:valle_adventure_app/features/settings/domain/entities/terms_conditions.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class FirebaseLegalDataSource implements LegalDataSource {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  EitherListPrivacyPolicies getPrivacyPolicies() async {
    try {
      final policiesCollection = db.collection('privacy_policies');
      final policiesResponse = await policiesCollection.get();
      final policies = <PrivacyPolicy>[];

      for (var policy in policiesResponse.docs) {
        final policyData = LegalModel.fromJson(policy.data());
        policies.add(PrivacyPolicy.fromModel(policyData));
      }
      return right(policies);
    } catch (e) {
      return left([]);
    }
  }

  @override
  EitherListTermsConditions getTermsConditions() async {
    try {
      final termsCollection = db.collection('terms_and_conditions');
      final termsResponse = await termsCollection.get();
      final termsConditions = <TermsConditions>[];

      for (var policy in termsResponse.docs) {
        final policyData = LegalModel.fromJson(policy.data());
        termsConditions.add(TermsConditions.fromModel(policyData));
      }
      return right(termsConditions);
    } catch (e) {
      return left([]);
    }
  }
}
