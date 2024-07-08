import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payload_pay_data_source.dart';
import 'package:valle_adventure_app/features/payment/data/repositories/payment_repository_impl.dart';

/// Provider for the [PaymentRepository]
///
/// Returns a [PaymentRepository]
final paymentRepositoryProvider = Provider.autoDispose((ref) {
  final datasource = PayloadPayDataSource();
  return PaymentRepositoryImpl(dataSource: datasource);
});

final reserveTourProvider = Provider.autoDispose((ref) {
  final repository = ref.watch(paymentRepositoryProvider);
  return repository.reserveTour;
});

final billingAddressProvider = Provider.autoDispose((ref) {
  final repository = ref.watch(paymentRepositoryProvider);
  return repository.saveBillingAddress;
});

final savePaymentProvider = Provider.autoDispose((ref) {
  final reserveTour = ref.watch(paymentRepositoryProvider);
  return reserveTour.savePayment;
});
