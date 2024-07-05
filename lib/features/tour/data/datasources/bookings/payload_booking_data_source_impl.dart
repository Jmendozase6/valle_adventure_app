import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/bookings/booking_data_source.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/booking.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadBookingDataSource implements BookingDataSource {
  final _payloadCMS = Dio(
    BaseOptions(
      baseUrl: AppEnviroment.PAYLOAD_BASE_URL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '${AppEnviroment.PAYLOAD_USERS_COLLECTION} API-Key ${AppEnviroment.PAYLOAD_USERS_API_KEY}'
      },
    ),
  );

  @override
  EitherListBookings getUserBookings({required String userId}) async {
    try {
      if (userId.isEmpty) return left([]);

      final response = await _payloadCMS.get('/bookings/by-user/$userId');
      final bookingsResponse = response.data['docs'];
      final bookingsModelList = <BookingModel>[];

      for (var booking in bookingsResponse) {
        bookingsModelList.add(BookingModel.fromJson(booking));
      }

      final bookings = bookingsModelList.map((booking) => Booking.fromModel(booking)).toList();
      return right(bookings);
    } catch (e) {
      return left([]);
    }
  }
}
