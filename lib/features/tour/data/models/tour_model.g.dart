// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayloadResponseModelImpl _$$PayloadResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PayloadResponseModelImpl(
      docs: (json['docs'] as List<dynamic>?)
              ?.map((e) => TourModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
      limit: json['limit'],
      nextPage: (json['nextPage'] as num?)?.toInt() ?? -1,
      page: (json['page'] as num).toInt(),
      pagingCounter: (json['pagingCounter'] as num).toInt(),
      prevPage: (json['prevPage'] as num?)?.toInt() ?? -1,
      totalDocs: (json['totalDocs'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$PayloadResponseModelImplToJson(
        _$PayloadResponseModelImpl instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
      'limit': instance.limit,
      'nextPage': instance.nextPage,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'prevPage': instance.prevPage,
      'totalDocs': instance.totalDocs,
      'totalPages': instance.totalPages,
    };

_$TourModelImpl _$$TourModelImplFromJson(Map<String, dynamic> json) =>
    _$TourModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      overview: json['overview'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toInt(),
      packing: json['packing'] as String? ?? '',
      important: json['important'] as String? ?? '',
      department: DepartmentModel.fromJson(
          json['id_department'] as Map<String, dynamic>),
      isAvailable: json['is_available'] as bool,
      rating: json['rating'] as String? ?? '0',
      includedItems: json['included_items'] as String? ?? '',
      notIncludedItems: json['not_included_items'] as String? ?? '',
      availableDates: (json['available_dates'] as List<dynamic>)
          .map((e) => AvailableDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLiked: json['isLiked'] as bool? ?? false,
    );

Map<String, dynamic> _$$TourModelImplToJson(_$TourModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'images': instance.images,
      'price': instance.price,
      'packing': instance.packing,
      'important': instance.important,
      'id_department': instance.department,
      'is_available': instance.isAvailable,
      'rating': instance.rating,
      'included_items': instance.includedItems,
      'not_included_items': instance.notIncludedItems,
      'available_dates': instance.availableDates,
      'isLiked': instance.isLiked,
    };

_$AvailableDateImpl _$$AvailableDateImplFromJson(Map<String, dynamic> json) =>
    _$AvailableDateImpl(
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$AvailableDateImplToJson(_$AvailableDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      src: Src.fromJson(json['src'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
    };

_$SrcImpl _$$SrcImplFromJson(Map<String, dynamic> json) => _$SrcImpl(
      cloudinary:
          Cloudinary.fromJson(json['cloudinary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SrcImplToJson(_$SrcImpl instance) => <String, dynamic>{
      'cloudinary': instance.cloudinary,
    };

_$CloudinaryImpl _$$CloudinaryImplFromJson(Map<String, dynamic> json) =>
    _$CloudinaryImpl(
      secureUrl: json['secure_url'] as String,
    );

Map<String, dynamic> _$$CloudinaryImplToJson(_$CloudinaryImpl instance) =>
    <String, dynamic>{
      'secure_url': instance.secureUrl,
    };
