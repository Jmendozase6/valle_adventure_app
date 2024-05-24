import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String name,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @Default('') @JsonKey(name: 'id_card') String idCard,
    @Default('') String phone,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
