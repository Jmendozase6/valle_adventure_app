import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'legal_model.freezed.dart';
part 'legal_model.g.dart';

LegalModel legalModelFromJson(String str) => LegalModel.fromJson(json.decode(str));

String legalModelToJson(LegalModel data) => json.encode(data.toJson());

@freezed
class LegalModel with _$LegalModel {
  const factory LegalModel({
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "content") required String content,
  }) = _LegalModel;

  factory LegalModel.fromJson(Map<String, dynamic> json) => _$LegalModelFromJson(json);
}
