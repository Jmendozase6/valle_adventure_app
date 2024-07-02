import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/departments/department_data_source.dart';
import 'package:valle_adventure_app/features/tour/data/models/department_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadDepartmentDataSourceImpl implements DepartmentDataSource {
  final _payloadCMS = Dio(
    BaseOptions(
      baseUrl: dotenv.get('PAYLOAD_BASE_URL'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '${dotenv.get('PAYLOAD_USERS_COLLECTION')} API-Key ${dotenv.get('PAYLOAD_USERS_API_KEY')}'
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
