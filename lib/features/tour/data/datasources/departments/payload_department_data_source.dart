import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/departments/department_data_source.dart';
import 'package:valle_adventure_app/features/tour/data/models/department_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadDepartmentDataSourceImpl implements DepartmentDataSource {
  final _payloadCMS = Dio(
    BaseOptions(
      baseUrl: AppEnviroment.PAYLOAD_BASE_URL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '${AppEnviroment.PAYLOAD_USERS_COLLECTION} API-Key ${AppEnviroment.PAYLOAD_USERS_API_KEY}'
      },
    ),
  );
  @override
  EitherListDepartments getDepartments() async {
    try {
      final response = await _payloadCMS.get('/departments');
      final departmentModel = departmentModelFromJson(response.data);
      // final tour = Tour.fromModel(departmentModel);
      return right(departmentModel);
    } catch (e) {
      return left([]);
    }
  }
}
