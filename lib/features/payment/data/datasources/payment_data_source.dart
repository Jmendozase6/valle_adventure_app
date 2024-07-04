import 'package:valle_adventure_app/features/home/domain/models/booking.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class PaymentDataSource {
  /// Pay for the transaction
  ///
  /// Return [bool] with the result of the payment or [String] with the error message
  EitherBool reserveTour({
    required Booking booking,
  });

  /// Save Payment information
  ///
  /// Return [bool] with the result of the payment
  EitherBool savePayment({
    required Map<String, dynamic> paymentResult,
  });
}
