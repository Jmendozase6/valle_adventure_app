// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      userMetadata:
          UserMetadata.fromJson(json['user_metadata'] as Map<String, dynamic>),
      newEmail: json['new_email'],
      email: json['email'] as String,
      phone: json['phone'],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_metadata': instance.userMetadata,
      'new_email': instance.newEmail,
      'email': instance.email,
      'phone': instance.phone,
    };

_$UserMetadataImpl _$$UserMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UserMetadataImpl(
      email: json['email'] as String,
      lastName: json['last_name'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserMetadataImplToJson(_$UserMetadataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'last_name': instance.lastName,
      'name': instance.name,
    };
