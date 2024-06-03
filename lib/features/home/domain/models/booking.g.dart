// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      createdAt: json['created_at'] as String,
      tourId: json['tour_id'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      idCard: json['id_card'] as String,
      qtyPlaces: (json['qty_places'] as num).toInt(),
      reservationDate: json['reservation_date'] as String,
      partners:
          (json['partners'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'tour_id': instance.tourId,
      'name': instance.name,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'id_card': instance.idCard,
      'qty_places': instance.qtyPlaces,
      'reservation_date': instance.reservationDate,
      'partners': instance.partners,
    };
