import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'dart:convert';

import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';

part 'liked_tour_model.freezed.dart';
part 'liked_tour_model.g.dart';

LikedTourModel likedTourFromJson(String str) => LikedTourModel.fromJson(json.decode(str));

String likedTourToJson(LikedTourModel data) => json.encode(data.toJson());

@freezed
class LikedTourModel with _$LikedTourModel {
  const factory LikedTourModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "tour_id") required TourModel tourId,
    @JsonKey(name: "user_id") required UserModel userId,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _LikedTourModel;

  factory LikedTourModel.fromJson(Map<String, dynamic> json) => _$LikedTourModelFromJson(json);
}
