import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/bookings/payload_booking_data_source_impl.dart';
import 'package:valle_adventure_app/features/tour/data/repositories/booking_repository_impl.dart';

/// Provider for the [BookingRepositoryImpl]
///
/// Returns a [BookingRepository]
final bookingsRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = PayloadBookingDataSource();
  return BookingRepositoryImpl(dataSource: datasource);
});
