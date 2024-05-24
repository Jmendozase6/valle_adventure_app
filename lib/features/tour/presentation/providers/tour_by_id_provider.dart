import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

final tourByIdProvider = FutureProvider.autoDispose<EitherBoolTour>((ref) async {
  final tourRepository = ref.watch(tourRepositoryProvider);
  return tourRepository.getTourById(id: '1');
});
