import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

List<BookingModel> bookingModelFromJson(String str) =>
    List<BookingModel>.from(json.decode(str).map((x) => BookingModel.fromJson(x)));

String bookingModelToJson(List<BookingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class BookingModel with _$BookingModel {
  const factory BookingModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "id_card") required String idCard,
    @JsonKey(name: "reservation_date") required String reservationDate,
    @JsonKey(name: "partners") required List<String> partners,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "tour_id") required String tourId,
    @JsonKey(name: "total") required double total,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);

  factory BookingModel.empty() {
    return const BookingModel(
      id: '',
      name: '',
      lastName: '',
      phone: '',
      idCard: '',
      userId: '',
      tourId: '',
      reservationDate: '',
      partners: [],
      total: 0.0,
    );
  }
}
