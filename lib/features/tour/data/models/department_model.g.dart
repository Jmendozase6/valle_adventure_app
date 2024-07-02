// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentModelImpl _$$DepartmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartmentModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'],
    );

Map<String, dynamic> _$$DepartmentModelImplToJson(
        _$DepartmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
