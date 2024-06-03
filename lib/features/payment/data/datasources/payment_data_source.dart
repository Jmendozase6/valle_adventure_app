import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class PaymentDataSource {
  /// Pay for the transaction
  ///
  /// Return [bool] with the result of the payment or [String] with the error message
  EitherStringBool pay({
    required double total,
    required String tourId,
    required String tourName,
    required String currency,
  });
}
