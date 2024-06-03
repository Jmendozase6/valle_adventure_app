import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  final dateController = TextEditingController(text: '01/01/2024');
  final partners = <TextEditingController>[
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

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
    dateController.clear();
    phoneController.clear();
    idCardController.clear();
  }

  Booking bookTour({
    required String userId,
    required String tourId,
    required int qtyPartners,
  }) {
    List<String> newPartners = [];
    if (qtyPartners > 0) {
      partners.where((element) => element.text.isNotEmpty).forEach((element) {
        newPartners.add(element.text);
      });
    }

    final bookTour = Booking(
      id: '',
      qtyPlaces: qtyPartners,
      reservationDate: dateController.text,
      createdAt: DateTime.now().toString(),
      userId: userId,
      name: userNameController.text,
      lastName: userLastNameController.text,
      phone: phoneController.text,
      idCard: idCardController.text,
      tourId: tourId,
      partners: newPartners,
    );
    // TODO: CUANDO SE ENVÍA, SUMAR EL USUARIO + LOS ACOMPAÑANTES
    state = bookTour;
    return state;
  }
}
