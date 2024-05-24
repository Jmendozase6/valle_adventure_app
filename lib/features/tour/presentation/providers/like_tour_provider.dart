import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

final likeTourProvider = Provider.autoDispose.family<void, List<String>>(
  (ref, data) async {
    /// data[0] = id
    /// data[1] = isLiked
    final authProvider = ref.watch(authRepositoryProvider);
    final tourProvider = ref.watch(tourRepositoryProvider);
    final userId = authProvider.getCurrentUserId().getOrElse((l) => '');
    if (data[1] == 'true') {
      await tourProvider.likeTour(userId: userId, tourId: data[0]);
    } else {
      await tourProvider.unlikeTour(userId: userId, tourId: data[0]);
    }
  },
);
