import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/google_pay_data_source.dart';
import 'package:valle_adventure_app/features/payment/data/repositories/payment_repository.dart';

/// Provider for the [PaymentRepository]
///
/// Returns a [PaymentRepository]
final paymentRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = GooglePayDataSource();
  return PaymentRepositoryImpl(dataSource: datasource);
});
