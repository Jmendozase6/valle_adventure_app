// To parse this JSON data, do
//
//     final tourModel = tourModelFromJson(jsonString);

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valle_adventure_app/features/tour/data/models/department_model.dart';

part 'tour_model.freezed.dart';
part 'tour_model.g.dart';

PayloadResponseModel payloadResponseModelFromJson(String str) =>
    PayloadResponseModel.fromJson(json.decode(str));

String tourModelToJson(PayloadResponseModel data) => json.encode(data.toJson());

@freezed
class PayloadResponseModel with _$PayloadResponseModel {
  const factory PayloadResponseModel({
    @Default([]) @JsonKey(name: "docs") List<TourModel> docs,
    @JsonKey(name: "hasNextPage") required bool hasNextPage,
    @JsonKey(name: "hasPrevPage") required bool hasPrevPage,
    @JsonKey(name: "limit") required dynamic limit,
    @Default(-1) @JsonKey(name: "nextPage") int nextPage,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "pagingCounter") required int pagingCounter,
    @Default(-1) @JsonKey(name: "prevPage") int prevPage,
    @JsonKey(name: "totalDocs") required int totalDocs,
    @JsonKey(name: "totalPages") required int totalPages,
  }) = _PayloadResponseModel;

  factory PayloadResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PayloadResponseModelFromJson(json);
}

@freezed
class TourModel with _$TourModel {
  const factory TourModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "overview") required String overview,
    @JsonKey(name: "images") required List<ImageModel> images,
    @JsonKey(name: "price") required int price,
    @Default('') @JsonKey(name: "packing") String packing,
    @Default('') @JsonKey(name: "important") String important,
    @JsonKey(name: "id_department") required DepartmentModel department,
    @JsonKey(name: "is_available") required bool isAvailable,
    @Default(0) @JsonKey(name: "rating") int rating,
    @Default('') @JsonKey(name: "included_items") String includedItems,
    @Default('') @JsonKey(name: "not_included_items") String notIncludedItems,
    @JsonKey(name: "available_dates") required List<AvailableDate> availableDates,
    @Default(false) @JsonKey(name: "isLiked") bool isLiked,
  }) = _TourModel;

  factory TourModel.fromJson(Map<String, dynamic> json) => _$TourModelFromJson(json);
}

@freezed
class AvailableDate with _$AvailableDate {
  const factory AvailableDate({
    @JsonKey(name: "date") required DateTime date,
  }) = _AvailableDate;

  factory AvailableDate.fromJson(Map<String, dynamic> json) => _$AvailableDateFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    @JsonKey(name: "src") required Src src,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
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
