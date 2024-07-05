// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

BookingModel bookingModelFromJson(String str) => BookingModel.fromJson(json.decode(str));

String bookingModelToJson(BookingModel data) => json.encode(data.toJson());

@freezed
class BookingModel with _$BookingModel {
  const factory BookingModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "id_card") required String idCard,
    @JsonKey(name: "reservation_date") required String reservationDate,
    @JsonKey(name: "qty_places") required int qtyPlaces,
    @JsonKey(name: "partners") required List<Partner> partners,
    @JsonKey(name: "tour_id") required TourId tourId,
    @JsonKey(name: "user_id") required UserId userId,
    @JsonKey(name: "total") required double total,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);

  static BookingModel empty() {
    return const BookingModel(
      id: "",
      name: "",
      lastName: "",
      phone: "",
      idCard: "",
      reservationDate: '',
      qtyPlaces: 0,
      partners: [],
      tourId: TourId(id: "", name: "", images: []),
      userId: UserId(id: ""),
      total: 0,
    );
  }
}

@freezed
class Partner with _$Partner {
  const factory Partner({
    @JsonKey(name: "name") required String name,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) => _$PartnerFromJson(json);
}

@freezed
class TourId with _$TourId {
  const factory TourId({
    @JsonKey(name: "id") required String id,
    @Default('') @JsonKey(name: "name") String name,
    @Default([]) @JsonKey(name: "images") List<ImageModel> images,
  }) = _TourId;

  factory TourId.fromJson(Map<String, dynamic> json) => _$TourIdFromJson(json);
}

@freezed
class UserId with _$UserId {
  const factory UserId({
    @JsonKey(name: "id") required String id,
  }) = _UserId;

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}
