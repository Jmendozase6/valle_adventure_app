import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';

class Tour {
  final String id;
  final String name;
  final String overview;
  final List<String> images;
  final double price;
  final String? packing;
  final String? important;
  final String department;
  final double rating;
  final String? includedItems;
  final String? notIncludedItems;
  final List<String> availableDates;
  final bool isAvailable;
  final bool isLiked;

  Tour({
    required this.id,
    required this.name,
    required this.overview,
    required this.images,
    required this.price,
    required this.packing,
    required this.important,
    required this.department,
    required this.isAvailable,
    required this.rating,
    required this.includedItems,
    required this.notIncludedItems,
    required this.availableDates,
    required this.isLiked,
  });

  factory Tour.fromModel(TourDoc model) => Tour(
        id: model.id,
        name: model.name,
        overview: model.overview,
        images: model.images.map((e) => e.src.cloudinary.secureUrl).toList(),
        price: model.price.toDouble(),
        packing: model.packing,
        important: model.important,
        department: model.department.name,
        isAvailable: model.isAvailable,
        rating: double.parse(model.rating.isEmpty ? '0' : model.rating),
        includedItems: model.includedItems,
        notIncludedItems: model.notIncludedItems,
        availableDates: model.availableDates.map((e) => e.date.toString()).toList(),
        isLiked: false,
      );

  // Empty constructor
  factory Tour.empty() => Tour(
        id: '',
        name: '',
        overview: '',
        images: [],
        price: 0,
        packing: '',
        important: '',
        department: '',
        isAvailable: false,
        rating: 0,
        includedItems: '',
        notIncludedItems: '',
        availableDates: [],
        isLiked: false,
      );
}
