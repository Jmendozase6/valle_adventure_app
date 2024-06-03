import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';
import 'package:valle_adventure_app/features/payment/domain/repositories/payment_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDataSource dataSource;

  PaymentRepositoryImpl({required this.dataSource});

  @override
  EitherStringBool pay({
    required double total,
    required String tourId,
    required String tourName,
    required String currency,
  }) async {
    final response = await dataSource.pay(
      total: total,
      tourId: tourId,
      tourName: tourName,
      currency: currency,
    );
    return response.fold(
      (error) => Left(error),
      (data) => Right(data),
    );
  }
}
