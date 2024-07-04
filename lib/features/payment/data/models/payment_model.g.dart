// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      apiVersion: (json['apiVersion'] as num).toInt(),
      apiVersionMinor: (json['apiVersionMinor'] as num).toInt(),
      paymentMethodData: PaymentMethodData.fromJson(
          json['paymentMethodData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'apiVersionMinor': instance.apiVersionMinor,
      'paymentMethodData': instance.paymentMethodData,
    };

_$PaymentMethodDataImpl _$$PaymentMethodDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodDataImpl(
      description: json['description'] as String,
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      tokenizationData: TokenizationData.fromJson(
          json['tokenizationData'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$PaymentMethodDataImplToJson(
        _$PaymentMethodDataImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'info': instance.info,
      'tokenizationData': instance.tokenizationData,
      'type': instance.type,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      billingAddress: BillingAddress.fromJson(
          json['billingAddress'] as Map<String, dynamic>),
      cardDetails: json['cardDetails'] as String,
      cardNetwork: json['cardNetwork'] as String,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'billingAddress': instance.billingAddress,
      'cardDetails': instance.cardDetails,
      'cardNetwork': instance.cardNetwork,
    };

_$BillingAddressImpl _$$BillingAddressImplFromJson(Map<String, dynamic> json) =>
    _$BillingAddressImpl(
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String,
      administrativeArea: json['administrativeArea'] as String,
      countryCode: json['countryCode'] as String,
      locality: json['locality'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      postalCode: json['postalCode'] as String,
      sortingCode: json['sortingCode'] as String,
    );

Map<String, dynamic> _$$BillingAddressImplToJson(
        _$BillingAddressImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'administrativeArea': instance.administrativeArea,
      'countryCode': instance.countryCode,
      'locality': instance.locality,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'sortingCode': instance.sortingCode,
    };

_$TokenizationDataImpl _$$TokenizationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenizationDataImpl(
      token: json['token'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$TokenizationDataImplToJson(
        _$TokenizationDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
    };
