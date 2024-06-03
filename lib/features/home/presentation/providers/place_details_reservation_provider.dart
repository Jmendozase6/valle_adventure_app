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

  router.pushNamed(AppRoutes.reservationForm.name, queryParameters: {
    if (tour.id.isNotEmpty) 'tour_id': tour.id,
    if (tour.name.isNotEmpty) 'tour_name': tour.name,
    if (tour.price != 0) 'tour_price': '${tour.price}',
    if (userData.id.isNotEmpty) 'user_id': userData.id,
    if (userData.name.isNotEmpty) 'user_name': userData.name,
    if (userData.lastName.isNotEmpty) 'user_last_name': userData.lastName,
    if (userData.phone.isNotEmpty) 'user_phone': userData.phone,
    if (userData.idCard.isNotEmpty) 'user_id_card': userData.idCard,
  });
});
