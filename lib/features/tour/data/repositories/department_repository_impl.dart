import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/departments/department_data_source.dart';
import 'package:valle_adventure_app/features/tour/domain/repositories/department_repository.dart';

import 'package:valle_adventure_app/utils/types/type_defs.dart';

class DepartmentRepositoryImpl implements DepartmentRepository {
  final DepartmentDataSource datasource;

  DepartmentRepositoryImpl({required this.datasource});

  @override
  EitherListDepartments getDepartments() async {
    final response = await datasource.getDepartments();
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
