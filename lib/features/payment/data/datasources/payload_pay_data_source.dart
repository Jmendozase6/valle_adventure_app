import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/home/domain/models/booking_model.dart';
import 'package:valle_adventure_app/features/payment/data/datasources/payment_data_source.dart';
import 'package:valle_adventure_app/features/payment/data/models/payment_model.dart';
import 'package:valle_adventure_app/features/payment/domain/entities/payment.dart';

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
  EitherFutureStringString reserveTour({
    required BookingModel booking,
  }) async {
    try {
      final response = await _payloadCMS.post(
        '/bookings',
        data: jsonEncode(generatePayload(booking)),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        return right(response.data['doc']['id']);
      } else {
        return left('');
      }
    } catch (e) {
      return left('');
    }
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
    try {
      final payment = Payment(
        bookingId: bookingId,
        userId: userId,
        status: status,
        total: total,
        invoiceType: invoiceType,
        provider: provider,
        paymentDescription: paymentResult.paymentMethodData.description,
        cardNetwork: paymentResult.paymentMethodData.info.cardNetwork,
        cardDetails: paymentResult.paymentMethodData.info.cardDetails,
        paymentToken: paymentResult.paymentMethodData.tokenizationData.token,
        billingAddressId: billingAddressId,
      );
      print(jsonEncode(payment.toMap()));
      final response = await _payloadCMS.post('/payments', data: jsonEncode(payment.toMap()));
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
  EitherFutureStringString saveBillingAddress({
    required BillingAddress billingAddress,
  }) async {
    try {
      final response = await _payloadCMS.post(
        '/billing-addresses',
        data: jsonEncode(billingAddress.toJson()),
      );
      print(response.data['doc']['id']);
      return right(response.data['doc']['id']);
    } catch (e) {
      print(e);
      return left('');
    }
  }
}

Map<String, dynamic> generatePayload(BookingModel booking) {
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
