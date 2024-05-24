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
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "packing") required String? packing,
    @JsonKey(name: "important") required String important,
    @JsonKey(name: "id_department") required String idDepartment,
    @Default([]) @JsonKey(name: "included_items") List<String>? includedItems,
    @Default([]) @JsonKey(name: "not_included_items") List<String>? notIncludedItems,
    @JsonKey(name: "is_available") required bool isAvailable,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
