// To parse this JSON data, do
//
//     final tour = tourFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'tour.freezed.dart';
part 'tour.g.dart';

List<Tour> tourFromJson(String str) =>
    List<Tour>.from(json.decode(str).map((x) => Tour.fromJson(x)));

String tourToJson(List<Tour> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Tour with _$Tour {
  const factory Tour({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "overview") required String overview,
    @Default([]) @JsonKey(name: "images") List<String>? images,
    @JsonKey(name: "price") required double price,
    @Default('') @JsonKey(name: "packing") String? packing,
    @Default('') @JsonKey(name: "important") String important,
    @JsonKey(name: "department") required String department,
    @Default('') @JsonKey(name: "included_items") String? includedItems,
    @Default('') @JsonKey(name: "not_included_items") String? notIncludedItems,
    @JsonKey(name: "is_available") required bool isAvailable,
    @JsonKey(name: "rating") required double rating,
    @Default(false) @JsonKey(name: "is_liked") bool? isLiked,
  }) = _Tour;

  factory Tour.empty() => const Tour(
      id: '',
      createdAt: '',
      name: '',
      overview: '',
      images: [],
      price: 0.0,
      packing: '',
      important: '',
      department: '',
      includedItems: '',
      notIncludedItems: '',
      isAvailable: false,
      rating: 0.0,
      isLiked: false);

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
