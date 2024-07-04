import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'booking.freezed.dart';
part 'booking.g.dart';

List<Booking> bookingFromJson(String str) =>
    List<Booking>.from(json.decode(str).map((x) => Booking.fromJson(x)));

String bookingToJson(List<Booking> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Booking with _$Booking {
  const factory Booking({
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
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);

  factory Booking.empty() {
    return const Booking(
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
