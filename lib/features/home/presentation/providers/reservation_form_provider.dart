import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/home/domain/models/book_tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

final bookProvider = NotifierProvider<BookTourNotifier, BookTour>(() {
  return BookTourNotifier();
});

class BookTourNotifier extends Notifier<BookTour> {
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
  BookTour build() {
    return BookTour.empty();
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

  void bookTour({
    required String userId,
    required String tourId,
    required String tourPrice,
    required int qtyPartners,
  }) async {
    List<String> newPartners = [];
    if (qtyPartners > 0) {
      partners.where((element) => element.text.isNotEmpty).forEach((element) {
        newPartners.add(element.text);
      });
    }

    final bookTour = BookTour(
      userId: userId,
      name: userNameController.text,
      lastName: userLastNameController.text,
      phone: phoneController.text,
      idCard: idCardController.text,
      tourId: tourId,
      tourName: tourNameController.text,
      tourPrice: tourPrice,
      date: dateController.text,
      partners: newPartners,
    );
    state = bookTour;
  }
}
