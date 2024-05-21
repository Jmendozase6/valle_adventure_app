// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      name: json['name'],
      lastName: json['lastName'],
      email: json['email'] as String,
      idCard: json['idCard'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
      'idCard': instance.idCard,
      'phone': instance.phone,
    };
