// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      userMetadata:
          UserMetadata.fromJson(json['userMetadata'] as Map<String, dynamic>),
      newEmail: json['newEmail'],
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userMetadata': instance.userMetadata,
      'newEmail': instance.newEmail,
      'email': instance.email,
      'phone': instance.phone,
    };

_$UserMetadataImpl _$$UserMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UserMetadataImpl(
      email: json['email'] as String,
      lastName: json['lastName'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserMetadataImplToJson(_$UserMetadataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'lastName': instance.lastName,
      'name': instance.name,
    };
