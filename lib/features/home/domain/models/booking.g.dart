// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      idCard: json['id_card'] as String,
      reservationDate: json['reservation_date'] as String,
      partners:
          (json['partners'] as List<dynamic>).map((e) => e as String).toList(),
      userId: json['user_id'] as String,
      tourId: json['tour_id'] as String,
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'id_card': instance.idCard,
      'reservation_date': instance.reservationDate,
      'partners': instance.partners,
      'user_id': instance.userId,
      'tour_id': instance.tourId,
      'total': instance.total,
    };
