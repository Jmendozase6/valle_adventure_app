// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      idCard: json['id_card'] as String,
      reservationDate: json['reservation_date'] as String,
      qtyPlaces: (json['qty_places'] as num).toInt(),
      partners: (json['partners'] as List<dynamic>)
          .map((e) => Partner.fromJson(e as Map<String, dynamic>))
          .toList(),
      tourId: TourId.fromJson(json['tour_id'] as Map<String, dynamic>),
      userId: UserId.fromJson(json['user_id'] as Map<String, dynamic>),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'id_card': instance.idCard,
      'reservation_date': instance.reservationDate,
      'qty_places': instance.qtyPlaces,
      'partners': instance.partners,
      'tour_id': instance.tourId,
      'user_id': instance.userId,
      'total': instance.total,
    };

_$PartnerImpl _$$PartnerImplFromJson(Map<String, dynamic> json) =>
    _$PartnerImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PartnerImplToJson(_$PartnerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$TourIdImpl _$$TourIdImplFromJson(Map<String, dynamic> json) => _$TourIdImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TourIdImplToJson(_$TourIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
