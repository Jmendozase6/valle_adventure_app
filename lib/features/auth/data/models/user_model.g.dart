// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      idCard: json['id_card'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'email': instance.email,
      'id_card': instance.idCard,
      'phone': instance.phone,
      'image_url': instance.imageUrl,
    };
