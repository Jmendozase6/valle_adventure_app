import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';
import 'package:valle_adventure_app/features/payment/domain/repositories/payment_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDataSource dataSource;

  PaymentRepositoryImpl({required this.dataSource});

  @override
  EitherBool reserveTour({
    required Booking booking,
  }) async {
    final response = await dataSource.reserveTour(
      booking: booking,
    );
    return response.fold(
      (error) => Left(error),
      (data) => Right(data),
    );
  }

  @override
  EitherBool savePayment({required Map<String, dynamic> paymentResult}) async {
    final response = await dataSource.savePayment(
      paymentResult: paymentResult,
    );
    return response.fold(
      (error) => Left(error),
      (data) => Right(data),
    );
  }
}
