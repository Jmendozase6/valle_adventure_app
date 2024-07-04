import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';

import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadPayDataSource extends PaymentDataSource {
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
  EitherBool reserveTour({
    required Booking booking,
  }) async {
    try {
      final response = await _payloadCMS.post(
        '/bookings',
        data: jsonEncode(generatePayload(booking)),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        return right(true);
      } else {
        return left(false);
      }
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBool savePayment({required Map<String, dynamic> paymentResult}) async {
    // try {
    //   final response = await _payloadCMS.post(
    //     '/pay',
    //     data: {
    //       generatePayload(booking),
    //     },
    //   );
    //   if (response.statusCode == 201 || response.statusCode == 200) {
    return right(true);
    //   } else {
    //     return left(false);
    //   }
    // } catch (e) {
    //   return left(false);
    // }
  }
}

Map<String, dynamic> generatePayload(Booking booking) {
  final partnersMap = booking.partners.map((name) {
    return {
      'name': name,
    };
  }).toList();

  final data = {
    'name': booking.name,
    'last_name': booking.lastName,
    'phone': booking.phone,
    'id_card': booking.idCard,
    'reservation_date': booking.reservationDate,
    'qty_places': booking.partners.length,
    'partners': partnersMap,
    'tour_id': booking.tourId,
    'user_id': booking.userId,
    'total': booking.total,
  };
  return data;
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
