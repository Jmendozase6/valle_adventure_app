// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikedTourModelImpl _$$LikedTourModelImplFromJson(Map<String, dynamic> json) =>
    _$LikedTourModelImpl(
      id: json['id'] as String,
      tourId: TourModel.fromJson(json['tour_id'] as Map<String, dynamic>),
      userId: UserModel.fromJson(json['user_id'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$LikedTourModelImplToJson(
        _$LikedTourModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour_id': instance.tourId,
      'user_id': instance.userId,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
