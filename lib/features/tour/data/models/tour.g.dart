// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      name: json['name'] as String,
      overview: json['overview'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      price: (json['price'] as num).toDouble(),
      packing: json['packing'] as String? ?? '',
      important: json['important'] as String? ?? '',
      idDepartment: json['id_department'] as String,
      includedItems: (json['included_items'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      notIncludedItems: (json['not_included_items'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isAvailable: json['is_available'] as bool,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'name': instance.name,
      'overview': instance.overview,
      'images': instance.images,
      'price': instance.price,
      'packing': instance.packing,
      'important': instance.important,
      'id_department': instance.idDepartment,
      'included_items': instance.includedItems,
      'not_included_items': instance.notIncludedItems,
      'is_available': instance.isAvailable,
      'rating': instance.rating,
    };
