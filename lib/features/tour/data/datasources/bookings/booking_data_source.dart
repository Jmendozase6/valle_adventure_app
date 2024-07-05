import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class BookingDataSource {
  /// Get all bookings
  ///
  /// Return a list of [Booking] or an empty list if there are no bookings
  EitherListBookings getUserBookings({required String userId});
}
