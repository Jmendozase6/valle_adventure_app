// To parse this JSON data, do
//
//     final googlePayConfigModel = googlePayConfigModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'google_pay_config_model.freezed.dart';
part 'google_pay_config_model.g.dart';

GooglePayConfigModel googlePayConfigModelFromJson(String str) =>
    GooglePayConfigModel.fromJson(json.decode(str));

String googlePayConfigModelToJson(GooglePayConfigModel data) => json.encode(data.toJson());

@freezed
class GooglePayConfigModel with _$GooglePayConfigModel {
  const factory GooglePayConfigModel({
    @JsonKey(name: "provider") required String provider,
    @JsonKey(name: "data") required Data data,
  }) = _GooglePayConfigModel;

  factory GooglePayConfigModel.fromJson(Map<String, dynamic> json) =>
      _$GooglePayConfigModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "environment") required String environment,
    @JsonKey(name: "apiVersion") required int apiVersion,
    @JsonKey(name: "apiVersionMinor") required int apiVersionMinor,
    @JsonKey(name: "allowedPaymentMethods")
    required List<AllowedPaymentMethod> allowedPaymentMethods,
    @JsonKey(name: "merchantInfo") required MerchantInfo merchantInfo,
    @JsonKey(name: "transactionInfo") required TransactionInfo transactionInfo,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class AllowedPaymentMethod with _$AllowedPaymentMethod {
  const factory AllowedPaymentMethod({
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "tokenizationSpecification")
    required TokenizationSpecification tokenizationSpecification,
    @JsonKey(name: "parameters") required AllowedPaymentMethodParameters parameters,
  }) = _AllowedPaymentMethod;

  factory AllowedPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$AllowedPaymentMethodFromJson(json);
}

@freezed
class AllowedPaymentMethodParameters with _$AllowedPaymentMethodParameters {
  const factory AllowedPaymentMethodParameters({
    @JsonKey(name: "allowedCardNetworks") required List<String> allowedCardNetworks,
    @JsonKey(name: "allowedAuthMethods") required List<String> allowedAuthMethods,
    @JsonKey(name: "billingAddressRequired") required bool billingAddressRequired,
    @JsonKey(name: "billingAddressParameters")
    required BillingAddressParameters billingAddressParameters,
  }) = _AllowedPaymentMethodParameters;

  factory AllowedPaymentMethodParameters.fromJson(Map<String, dynamic> json) =>
      _$AllowedPaymentMethodParametersFromJson(json);
}

@freezed
class BillingAddressParameters with _$BillingAddressParameters {
  const factory BillingAddressParameters({
    @JsonKey(name: "format") required String format,
    @JsonKey(name: "phoneNumberRequired") required bool phoneNumberRequired,
  }) = _BillingAddressParameters;

  factory BillingAddressParameters.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressParametersFromJson(json);
}

@freezed
class TokenizationSpecification with _$TokenizationSpecification {
  const factory TokenizationSpecification({
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "parameters") required TokenizationSpecificationParameters parameters,
  }) = _TokenizationSpecification;

  factory TokenizationSpecification.fromJson(Map<String, dynamic> json) =>
      _$TokenizationSpecificationFromJson(json);
}

@freezed
class TokenizationSpecificationParameters with _$TokenizationSpecificationParameters {
  const factory TokenizationSpecificationParameters({
    @JsonKey(name: "gateway") required String gateway,
    @JsonKey(name: "gatewayMerchantId") required String gatewayMerchantId,
  }) = _TokenizationSpecificationParameters;

  factory TokenizationSpecificationParameters.fromJson(Map<String, dynamic> json) =>
      _$TokenizationSpecificationParametersFromJson(json);
}

@freezed
class MerchantInfo with _$MerchantInfo {
  const factory MerchantInfo({
    @JsonKey(name: "merchantId") required String merchantId,
    @JsonKey(name: "merchantName") required String merchantName,
  }) = _MerchantInfo;

  factory MerchantInfo.fromJson(Map<String, dynamic> json) => _$MerchantInfoFromJson(json);
}

@freezed
class TransactionInfo with _$TransactionInfo {
  const factory TransactionInfo({
    @JsonKey(name: "countryCode") required String countryCode,
    @JsonKey(name: "currencyCode") required String currencyCode,
  }) = _TransactionInfo;

  factory TransactionInfo.fromJson(Map<String, dynamic> json) => _$TransactionInfoFromJson(json);
}
