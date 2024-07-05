import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';

class Booking {
  final String id;
  final String name;
  final String lastName;
  final String phone;
  final String idCard;
  final String reservationDate;
  final List<String> partners;
  final String tourName;
  final List<ImageModel> images;
  final double total;

  Booking({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.idCard,
    required this.reservationDate,
    required this.partners,
    required this.tourName,
    required this.images,
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
      partners: model.partners.map((e) => e.name).toList(),
      tourName: model.tourId.name,
      images: model.tourId.images,
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
      images: [],
      tourName: '',
      total: 0.0,
    );
  }
}
