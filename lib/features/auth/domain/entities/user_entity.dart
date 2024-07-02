import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';

class UserEntity {
  final String id;
  final String name;
  final String lastName;
  final String email;
  final String idCard;
  final String phone;
  final String avatarUrl;

  UserEntity({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.idCard,
    required this.phone,
    required this.avatarUrl,
  });

  factory UserEntity.fromModel(UserModel model) => UserEntity(
        id: model.id,
        name: model.name,
        lastName: model.lastName,
        email: model.email,
        idCard: model.idCard,
        phone: model.phone,
        avatarUrl: model.imageUrl,
      );
}
