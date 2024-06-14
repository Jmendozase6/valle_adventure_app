import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';

class UserEntitie {
  final String id;
  final String name;
  final String lastName;
  final String email;
  final String idCard;
  final String phone;
  final String avatarUrl;

  UserEntitie({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.idCard,
    required this.phone,
    required this.avatarUrl,
  });

  factory UserEntitie.fromModel(UserModel model) => UserEntitie(
        id: model.id,
        name: model.name,
        lastName: model.lastName,
        email: model.email,
        idCard: model.idCard,
        phone: model.phone,
        avatarUrl: model.imageUrl,
      );
}
