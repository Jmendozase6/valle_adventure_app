import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

List<DepartmentModel> departmentModelFromJson(String str) =>
    List<DepartmentModel>.from(json.decode(str).map((x) => DepartmentModel.fromJson(x)));

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required dynamic description,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);
}
