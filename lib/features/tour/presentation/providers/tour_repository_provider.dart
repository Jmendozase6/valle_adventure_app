import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/supabase_tour_data_source.dart';
import 'package:valle_adventure_app/features/tour/data/repositories/tour_repository_impl.dart';

/// Provider for the [TourRepository]
///
/// Returns a [TourRepository]
final tourRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = SupabaseTourDataSourceImpl();
  return TourRepositoryImpl(datasource: datasource);
});
