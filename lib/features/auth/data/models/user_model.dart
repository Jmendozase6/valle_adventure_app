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
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
  }) = _UserModel;

  factory UserModel.empty() => UserModel(
        id: '',
        name: '',
        lastName: '',
        email: '',
        imageUrl: '',
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
