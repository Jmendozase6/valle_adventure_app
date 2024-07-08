import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class LegalDataSource {
  /// Get list of privacy policies
  ///
  /// Returns a list of [PrivacyPolicy] objects
  EitherListPrivacyPolicies getPrivacyPolicies();

  /// Get list of terms and conditions
  ///
  /// Returns a list of [TermsAndConditions] objects
  EitherListTermsConditions getTermsConditions();
}
