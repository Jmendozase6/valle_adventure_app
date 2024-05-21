import 'package:valle_adventure_app/features/auth/domain/entities/user.dart';

// class UserModel extends User {
//   UserModel({
//     required super.id,
//     required super.createdAt,
//     super.name,
//     super.lastName,
//     required super.email,
//     super.idCard,
//     super.phone,
//   });
// }

// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String createdAt,
    required dynamic name,
    required dynamic lastName,
    required String email,
    required String idCard,
    required String phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
