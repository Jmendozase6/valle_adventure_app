import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';
import 'package:valle_adventure_app/features/payment/data/models/payment_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class PaymentDataSource {
  /// Pay for the transaction
  ///
  /// Return [bool] with the result of the payment or [String] with the error message
  EitherFutureStringString reserveTour({
    required BookingModel booking,
  });

  /// Save Payment information
  ///
  /// Return [bool] with the result of the payment
  EitherBool savePayment({
    required String bookingId,
    required String userId,
    required String billingAddressId,
    required double total,
    required String status,
    required String invoiceType,
    required String provider,
    required PaymentModel paymentResult,
  });

  /// Save the billing address
  ///
  /// Return [Map<String, dynamic>] with the billing address
  EitherFutureStringString saveBillingAddress({
    required BillingAddress billingAddress,
  });
}
