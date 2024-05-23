// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "user_metadata") required UserMetadata userMetadata,
    @JsonKey(name: "new_email") required dynamic newEmail,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phone") required dynamic phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserMetadata with _$UserMetadata {
  const factory UserMetadata({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "name") required String name,
  }) = _UserMetadata;

  factory UserMetadata.fromJson(Map<String, dynamic> json) => _$UserMetadataFromJson(json);
}
