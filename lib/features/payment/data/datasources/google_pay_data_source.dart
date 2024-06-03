import 'package:pay/pay.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';
import 'package:valle_adventure_app/features/payment/data/models/enum_payment_providers.dart';
import 'package:valle_adventure_app/features/payment/data/models/google_pay_config_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class GooglePayDataSource extends PaymentDataSource {
  @override
  EitherStringBool pay({
    required double total,
    required String tourId,
    required String tourName,
    required String currency,
  }) {
    throw UnimplementedError();
  }
}
//   GooglePayButton buildGooglePayButton({
//     required double total,
//     required String tourId,
//     required String tourName,
//     required String currency,
//   }) {
//     final googlePayConfig = GooglePayConfigModel(
//       provider: EnumPaymentProviders.google.name,
//       data: Data(
//         environment: 'TEST',
//         apiVersion: 2,
//         apiVersionMinor: 0,
//         allowedPaymentMethods: allowedPaymentMethods,
//         merchantInfo: merchantInfo,
//         transactionInfo: transactionInfo,
//       ),
//     );
//     return GooglePayButton(
//       paymentConfiguration: PaymentConfiguration.fromJsonString(
//         googlePayConfig.toJson().toString(),
//       ),
//       paymentItems: [
//         PaymentItem(
//           label: tourName,
//           amount: total.toString(),
//           status: PaymentItemStatus.final_price,
//         ),
//       ],
//     );
//   }
// }
