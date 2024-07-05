import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';
import 'package:valle_adventure_app/features/payment/data/models/payment_model.dart';
import 'package:valle_adventure_app/features/payment/domain/repositories/payment_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDataSource dataSource;

  PaymentRepositoryImpl({required this.dataSource});

  @override
  EitherFutureStringString reserveTour({
    required BookingModel booking,
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
  EitherBool savePayment({
    required String bookingId,
    required String userId,
    required String billingAddressId,
    required double total,
    required String status,
    required String invoiceType,
    required String provider,
    required PaymentModel paymentResult,
  }) async {
    final response = await dataSource.savePayment(
      bookingId: bookingId,
      userId: userId,
      billingAddressId: billingAddressId,
      total: total,
      status: status,
      invoiceType: invoiceType,
      provider: provider,
      paymentResult: paymentResult,
    );
    return response.fold(
      (error) => Left(error),
      (data) => Right(data),
    );
  }

  @override
  EitherFutureStringString saveBillingAddress({required BillingAddress billingAddress}) async {
    final response = await dataSource.saveBillingAddress(billingAddress: billingAddress);
    return response.fold(
      (error) => Left(error),
      (data) => Right(data),
    );
  }
}
