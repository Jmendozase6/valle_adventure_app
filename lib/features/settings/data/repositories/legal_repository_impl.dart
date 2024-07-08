import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/settings/data/datasources/legal_data_source.dart';
import 'package:valle_adventure_app/features/settings/domain/repositories/legal_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class LegalRepositoryImpl implements LegalRepository {
  final LegalDataSource datasource;

  LegalRepositoryImpl({required this.datasource});

  @override
  EitherListPrivacyPolicies getPrivacyPolicies() async {
    final response = await datasource.getPrivacyPolicies();
    return response.fold(
      (l) => left([]),
      (r) => right(r),
    );
  }

  @override
  EitherListTermsConditions getTermsConditions() async {
    final response = await datasource.getTermsConditions();
    return response.fold(
      (l) => left([]),
      (r) => right(r),
    );
  }
}
