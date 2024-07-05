// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

PaymentModel paymentModelFromJson(String str) => PaymentModel.fromJson(json.decode(str));

String paymentModelToJson(PaymentModel data) => json.encode(data.toJson());

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    @JsonKey(name: "paymentMethodData") required PaymentMethodData paymentMethodData,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);
}

@freezed
class PaymentMethodData with _$PaymentMethodData {
  const factory PaymentMethodData({
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "info") required Info info,
    @JsonKey(name: "tokenizationData") required TokenizationData tokenizationData,
    @JsonKey(name: "type") required String type,
  }) = _PaymentMethodData;

  factory PaymentMethodData.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDataFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    @JsonKey(name: "billingAddress") required BillingAddress billingAddress,
    @JsonKey(name: "cardDetails") required String cardDetails,
    @JsonKey(name: "cardNetwork") required String cardNetwork,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class BillingAddress with _$BillingAddress {
  const factory BillingAddress({
    @JsonKey(name: "address1") required String address1,
    @JsonKey(name: "countryCode") required String countryCode,
    @JsonKey(name: "locality") required String locality,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
    @JsonKey(name: "postalCode") required String postalCode,
  }) = _BillingAddress;

  factory BillingAddress.fromJson(Map<String, dynamic> json) => _$BillingAddressFromJson(json);
}

@freezed
class TokenizationData with _$TokenizationData {
  const factory TokenizationData({
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "type") required String type,
  }) = _TokenizationData;

  factory TokenizationData.fromJson(Map<String, dynamic> json) => _$TokenizationDataFromJson(json);
}
