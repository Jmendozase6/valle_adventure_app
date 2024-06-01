class BookTour {
  final String userId;
  final String name;
  final String lastName;
  final String phone;
  final String idCard;
  final String tourId;
  final String tourName;
  final String tourPrice;
  final String date;
  final List<String> partners;

  BookTour({
    required this.userId,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.idCard,
    required this.tourId,
    required this.tourName,
    required this.tourPrice,
    required this.date,
    required this.partners,
  });

  factory BookTour.empty() {
    return BookTour(
      userId: '',
      name: '',
      lastName: '',
      phone: '',
      idCard: '',
      tourId: '',
      tourName: '',
      tourPrice: '',
      date: '',
      partners: [],
    );
  }
}
