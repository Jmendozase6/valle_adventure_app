import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';

class Booking {
  final String id;
  final String name;
  final String lastName;
  final String phone;
  final String idCard;
  final String reservationDate;
  final List<String> partners;
  final String tourId;
  final double total;

  Booking({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.idCard,
    required this.reservationDate,
    required this.partners,
    required this.tourId,
    required this.total,
  });

  factory Booking.fromModel(BookingModel model) {
    return Booking(
      id: model.id,
      name: model.name,
      lastName: model.lastName,
      phone: model.phone,
      idCard: model.idCard,
      reservationDate: model.reservationDate,
      partners: model.partners,
      tourId: model.tourId,
      total: model.total,
    );
  }

  factory Booking.empty() {
    return Booking(
      id: '',
      name: '',
      lastName: '',
      phone: '',
      idCard: '',
      reservationDate: '',
      partners: [],
      tourId: '',
      total: 0.0,
    );
  }
}
