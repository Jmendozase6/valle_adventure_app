// To parse this JSON data, do
//
//     final tourModel = tourModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'tour_model.freezed.dart';
part 'tour_model.g.dart';

TourModel tourModelFromJson(String str) => TourModel.fromJson(json.decode(str));

String tourModelToJson(TourModel data) => json.encode(data.toJson());

@freezed
class TourModel with _$TourModel {
  const factory TourModel({
    @Default([]) @JsonKey(name: "docs") List<TourDoc> docs,
    @JsonKey(name: "hasNextPage") required bool hasNextPage,
    @JsonKey(name: "hasPrevPage") required bool hasPrevPage,
    @JsonKey(name: "limit") required int limit,
    @Default(-1) @JsonKey(name: "nextPage") int nextPage,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "pagingCounter") required int pagingCounter,
    @Default(-1) @JsonKey(name: "prevPage") int prevPage,
    @JsonKey(name: "totalDocs") required int totalDocs,
    @JsonKey(name: "totalPages") required int totalPages,
  }) = _TourModel;

  factory TourModel.fromJson(Map<String, dynamic> json) => _$TourModelFromJson(json);
}

@freezed
class TourDoc with _$TourDoc {
  const factory TourDoc({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "overview") required String overview,
    @JsonKey(name: "images") required List<Image> images,
    @JsonKey(name: "price") required int price,
    @Default('') @JsonKey(name: "packing") String packing,
    @Default('') @JsonKey(name: "important") String important,
    @JsonKey(name: "id_department") required IdDepartment department,
    @JsonKey(name: "is_available") required bool isAvailable,
    @Default('') @JsonKey(name: "rating") String rating,
    @Default('') @JsonKey(name: "included_items") String includedItems,
    @Default('') @JsonKey(name: "not_included_items") String notIncludedItems,
    @JsonKey(name: "available_dates") required List<AvailableDate> availableDates,
  }) = _TourDoc;

  factory TourDoc.fromJson(Map<String, dynamic> json) => _$TourDocFromJson(json);
}

@freezed
class AvailableDate with _$AvailableDate {
  const factory AvailableDate({
    @JsonKey(name: "date") required DateTime date,
  }) = _AvailableDate;

  factory AvailableDate.fromJson(Map<String, dynamic> json) => _$AvailableDateFromJson(json);
}

@freezed
class IdDepartment with _$IdDepartment {
  const factory IdDepartment({
    @JsonKey(name: "name") required String name,
  }) = _IdDepartment;

  factory IdDepartment.fromJson(Map<String, dynamic> json) => _$IdDepartmentFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "src") required Src src,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    @JsonKey(name: "cloudinary") required Cloudinary cloudinary,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}

@freezed
class Cloudinary with _$Cloudinary {
  const factory Cloudinary({
    @JsonKey(name: "secure_url") required String secureUrl,
  }) = _Cloudinary;

  factory Cloudinary.fromJson(Map<String, dynamic> json) => _$CloudinaryFromJson(json);
}
