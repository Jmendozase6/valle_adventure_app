import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';

final placeDetailsReservationProvider = Provider.autoDispose.family<void, Tour>((ref, tour) async {
  final user = await ref.watch(authRepositoryProvider).getCurrentUser();
  final userData = user.fold((error) => '', (data) => data) as UserModel;
  final router = ref.watch(routerProvider);

  final updatedUserData = userData.copyWith(
    phone: userData.phone.isEmpty ? '0' : userData.phone,
    idCard: userData.idCard.isEmpty ? '0' : userData.idCard,
  );

  router.pushNamed(AppRoutes.reservationForm.name, pathParameters: {
    'tour_id': tour.id,
    'tour_name': tour.name,
    'tour_price': '${tour.price}',
    'user_id': userData.id,
    'user_name': userData.name,
    'user_last_name': userData.lastName,
    'user_phone': updatedUserData.phone,
    'user_id_card': updatedUserData.idCard,
  });
});
