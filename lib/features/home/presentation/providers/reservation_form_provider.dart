import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking.dart';

final bookProvider = NotifierProvider<BookTourNotifier, Booking>(() {
  return BookTourNotifier();
});

class BookTourNotifier extends Notifier<Booking> {
  final userDataFormKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final userLastNameController = TextEditingController();
  final tourNameController = TextEditingController();
  final phoneController = TextEditingController();
  final idCardController = TextEditingController();
  final partners = <TextEditingController>[
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  Booking tourBook = Booking.empty();

  @override
  Booking build() {
    return Booking.empty();
  }

  void addPartner({required String fullName}) {
    partners.add(TextEditingController(text: fullName));
  }

  void clearPartners() {
    for (var element in partners) {
      element.text = '';
    }
  }

  void clearForm() {
    userNameController.clear();
    userLastNameController.clear();
    tourNameController.clear();
    phoneController.clear();
    idCardController.clear();
  }

  Booking bookTour({
    required String userId,
    required String tourId,
    required int qtyPartners,
    required String reservationDate,
    required double total,
  }) {
    List<String> newPartners = [];
    if (qtyPartners > 0) {
      partners.where((element) => element.text.isNotEmpty).forEach((element) {
        newPartners.add(element.text);
      });
    }

    final bookTour = Booking(
      id: const Uuid().v4(),
      reservationDate: reservationDate,
      userId: userId,
      name: userNameController.text,
      lastName: userLastNameController.text,
      phone: phoneController.text,
      idCard: idCardController.text,
      tourId: tourId,
      partners: newPartners,
      total: (total * (qtyPartners + 1)),
    );
    state = bookTour;
    tourBook = bookTour;
    return state;
  }
}
