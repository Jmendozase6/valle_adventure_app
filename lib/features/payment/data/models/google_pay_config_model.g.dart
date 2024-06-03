// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_pay_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePayConfigModelImpl _$$GooglePayConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GooglePayConfigModelImpl(
      provider: json['provider'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GooglePayConfigModelImplToJson(
        _$GooglePayConfigModelImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      environment: json['environment'] as String,
      apiVersion: (json['apiVersion'] as num).toInt(),
      apiVersionMinor: (json['apiVersionMinor'] as num).toInt(),
      allowedPaymentMethods: (json['allowedPaymentMethods'] as List<dynamic>)
          .map((e) => AllowedPaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      merchantInfo:
          MerchantInfo.fromJson(json['merchantInfo'] as Map<String, dynamic>),
      transactionInfo: TransactionInfo.fromJson(
          json['transactionInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'environment': instance.environment,
      'apiVersion': instance.apiVersion,
      'apiVersionMinor': instance.apiVersionMinor,
      'allowedPaymentMethods': instance.allowedPaymentMethods,
      'merchantInfo': instance.merchantInfo,
      'transactionInfo': instance.transactionInfo,
    };

_$AllowedPaymentMethodImpl _$$AllowedPaymentMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$AllowedPaymentMethodImpl(
      type: json['type'] as String,
      tokenizationSpecification: TokenizationSpecification.fromJson(
          json['tokenizationSpecification'] as Map<String, dynamic>),
      parameters: AllowedPaymentMethodParameters.fromJson(
          json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllowedPaymentMethodImplToJson(
        _$AllowedPaymentMethodImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'tokenizationSpecification': instance.tokenizationSpecification,
      'parameters': instance.parameters,
    };

_$AllowedPaymentMethodParametersImpl
    _$$AllowedPaymentMethodParametersImplFromJson(Map<String, dynamic> json) =>
        _$AllowedPaymentMethodParametersImpl(
          allowedCardNetworks: (json['allowedCardNetworks'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          allowedAuthMethods: (json['allowedAuthMethods'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          billingAddressRequired: json['billingAddressRequired'] as bool,
          billingAddressParameters: BillingAddressParameters.fromJson(
              json['billingAddressParameters'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AllowedPaymentMethodParametersImplToJson(
        _$AllowedPaymentMethodParametersImpl instance) =>
    <String, dynamic>{
      'allowedCardNetworks': instance.allowedCardNetworks,
      'allowedAuthMethods': instance.allowedAuthMethods,
      'billingAddressRequired': instance.billingAddressRequired,
      'billingAddressParameters': instance.billingAddressParameters,
    };

_$BillingAddressParametersImpl _$$BillingAddressParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingAddressParametersImpl(
      format: json['format'] as String,
      phoneNumberRequired: json['phoneNumberRequired'] as bool,
    );

Map<String, dynamic> _$$BillingAddressParametersImplToJson(
        _$BillingAddressParametersImpl instance) =>
    <String, dynamic>{
      'format': instance.format,
      'phoneNumberRequired': instance.phoneNumberRequired,
    };

_$TokenizationSpecificationImpl _$$TokenizationSpecificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenizationSpecificationImpl(
      type: json['type'] as String,
      parameters: TokenizationSpecificationParameters.fromJson(
          json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenizationSpecificationImplToJson(
        _$TokenizationSpecificationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'parameters': instance.parameters,
    };

_$TokenizationSpecificationParametersImpl
    _$$TokenizationSpecificationParametersImplFromJson(
            Map<String, dynamic> json) =>
        _$TokenizationSpecificationParametersImpl(
          gateway: json['gateway'] as String,
          gatewayMerchantId: json['gatewayMerchantId'] as String,
        );

Map<String, dynamic> _$$TokenizationSpecificationParametersImplToJson(
        _$TokenizationSpecificationParametersImpl instance) =>
    <String, dynamic>{
      'gateway': instance.gateway,
      'gatewayMerchantId': instance.gatewayMerchantId,
    };

_$MerchantInfoImpl _$$MerchantInfoImplFromJson(Map<String, dynamic> json) =>
    _$MerchantInfoImpl(
      merchantId: json['merchantId'] as String,
      merchantName: json['merchantName'] as String,
    );

Map<String, dynamic> _$$MerchantInfoImplToJson(_$MerchantInfoImpl instance) =>
    <String, dynamic>{
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
    };

_$TransactionInfoImpl _$$TransactionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionInfoImpl(
      countryCode: json['countryCode'] as String,
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$TransactionInfoImplToJson(
        _$TransactionInfoImpl instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'currencyCode': instance.currencyCode,
    };
