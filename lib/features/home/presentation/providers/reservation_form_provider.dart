import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';

final bookProvider = NotifierProvider<BookTourNotifier, BookingModel>(() {
  return BookTourNotifier();
});

class BookTourNotifier extends Notifier<BookingModel> {
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
  BookingModel tourBook = BookingModel.empty();

  @override
  BookingModel build() {
    return BookingModel.empty();
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

  BookingModel bookTour({
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

    final bookTour = BookingModel(
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
