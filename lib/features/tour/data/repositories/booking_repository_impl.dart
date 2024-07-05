import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/bookings/booking_data_source.dart';
import 'package:valle_adventure_app/features/tour/domain/repositories/booking_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingDataSource datasource;

  BookingRepositoryImpl({required this.datasource});

  @override
  EitherListBookings getUserBookings({required String userId}) async {
    final response = await datasource.getUserBookings(userId: userId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
