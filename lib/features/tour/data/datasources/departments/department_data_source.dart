import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class DepartmentDataSource {
  /// Get all departments
  ///
  /// Return a list of [Department] or an empty list if there are no departments
  EitherListDepartments getDepartments();
}
