// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  @JsonKey(name: "paymentMethodData")
  PaymentMethodData get paymentMethodData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "paymentMethodData")
      PaymentMethodData paymentMethodData});

  $PaymentMethodDataCopyWith<$Res> get paymentMethodData;
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodData = null,
  }) {
    return _then(_value.copyWith(
      paymentMethodData: null == paymentMethodData
          ? _value.paymentMethodData
          : paymentMethodData // ignore: cast_nullable_to_non_nullable
              as PaymentMethodData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodDataCopyWith<$Res> get paymentMethodData {
    return $PaymentMethodDataCopyWith<$Res>(_value.paymentMethodData, (value) {
      return _then(_value.copyWith(paymentMethodData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "paymentMethodData")
      PaymentMethodData paymentMethodData});

  @override
  $PaymentMethodDataCopyWith<$Res> get paymentMethodData;
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodData = null,
  }) {
    return _then(_$PaymentModelImpl(
      paymentMethodData: null == paymentMethodData
          ? _value.paymentMethodData
          : paymentMethodData // ignore: cast_nullable_to_non_nullable
              as PaymentMethodData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl implements _PaymentModel {
  const _$PaymentModelImpl(
      {@JsonKey(name: "paymentMethodData") required this.paymentMethodData});

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  @override
  @JsonKey(name: "paymentMethodData")
  final PaymentMethodData paymentMethodData;

  @override
  String toString() {
    return 'PaymentModel(paymentMethodData: $paymentMethodData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.paymentMethodData, paymentMethodData) ||
                other.paymentMethodData == paymentMethodData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {@JsonKey(name: "paymentMethodData")
      required final PaymentMethodData paymentMethodData}) = _$PaymentModelImpl;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override
  @JsonKey(name: "paymentMethodData")
  PaymentMethodData get paymentMethodData;
  @override
  @JsonKey(ignore: true)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentMethodData _$PaymentMethodDataFromJson(Map<String, dynamic> json) {
  return _PaymentMethodData.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodData {
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "info")
  Info get info => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenizationData")
  TokenizationData get tokenizationData => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDataCopyWith<PaymentMethodData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDataCopyWith<$Res> {
  factory $PaymentMethodDataCopyWith(
          PaymentMethodData value, $Res Function(PaymentMethodData) then) =
      _$PaymentMethodDataCopyWithImpl<$Res, PaymentMethodData>;
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "info") Info info,
      @JsonKey(name: "tokenizationData") TokenizationData tokenizationData,
      @JsonKey(name: "type") String type});

  $InfoCopyWith<$Res> get info;
  $TokenizationDataCopyWith<$Res> get tokenizationData;
}

/// @nodoc
class _$PaymentMethodDataCopyWithImpl<$Res, $Val extends PaymentMethodData>
    implements $PaymentMethodDataCopyWith<$Res> {
  _$PaymentMethodDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? info = null,
    Object? tokenizationData = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      tokenizationData: null == tokenizationData
          ? _value.tokenizationData
          : tokenizationData // ignore: cast_nullable_to_non_nullable
              as TokenizationData,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenizationDataCopyWith<$Res> get tokenizationData {
    return $TokenizationDataCopyWith<$Res>(_value.tokenizationData, (value) {
      return _then(_value.copyWith(tokenizationData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentMethodDataImplCopyWith<$Res>
    implements $PaymentMethodDataCopyWith<$Res> {
  factory _$$PaymentMethodDataImplCopyWith(_$PaymentMethodDataImpl value,
          $Res Function(_$PaymentMethodDataImpl) then) =
      __$$PaymentMethodDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "info") Info info,
      @JsonKey(name: "tokenizationData") TokenizationData tokenizationData,
      @JsonKey(name: "type") String type});

  @override
  $InfoCopyWith<$Res> get info;
  @override
  $TokenizationDataCopyWith<$Res> get tokenizationData;
}

/// @nodoc
class __$$PaymentMethodDataImplCopyWithImpl<$Res>
    extends _$PaymentMethodDataCopyWithImpl<$Res, _$PaymentMethodDataImpl>
    implements _$$PaymentMethodDataImplCopyWith<$Res> {
  __$$PaymentMethodDataImplCopyWithImpl(_$PaymentMethodDataImpl _value,
      $Res Function(_$PaymentMethodDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? info = null,
    Object? tokenizationData = null,
    Object? type = null,
  }) {
    return _then(_$PaymentMethodDataImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      tokenizationData: null == tokenizationData
          ? _value.tokenizationData
          : tokenizationData // ignore: cast_nullable_to_non_nullable
              as TokenizationData,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodDataImpl implements _PaymentMethodData {
  const _$PaymentMethodDataImpl(
      {@JsonKey(name: "description") required this.description,
      @JsonKey(name: "info") required this.info,
      @JsonKey(name: "tokenizationData") required this.tokenizationData,
      @JsonKey(name: "type") required this.type});

  factory _$PaymentMethodDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodDataImplFromJson(json);

  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "info")
  final Info info;
  @override
  @JsonKey(name: "tokenizationData")
  final TokenizationData tokenizationData;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'PaymentMethodData(description: $description, info: $info, tokenizationData: $tokenizationData, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodDataImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.tokenizationData, tokenizationData) ||
                other.tokenizationData == tokenizationData) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, info, tokenizationData, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodDataImplCopyWith<_$PaymentMethodDataImpl> get copyWith =>
      __$$PaymentMethodDataImplCopyWithImpl<_$PaymentMethodDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodData implements PaymentMethodData {
  const factory _PaymentMethodData(
          {@JsonKey(name: "description") required final String description,
          @JsonKey(name: "info") required final Info info,
          @JsonKey(name: "tokenizationData")
          required final TokenizationData tokenizationData,
          @JsonKey(name: "type") required final String type}) =
      _$PaymentMethodDataImpl;

  factory _PaymentMethodData.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodDataImpl.fromJson;

  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "info")
  Info get info;
  @override
  @JsonKey(name: "tokenizationData")
  TokenizationData get tokenizationData;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodDataImplCopyWith<_$PaymentMethodDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: "billingAddress")
  BillingAddress get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "cardDetails")
  String get cardDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "cardNetwork")
  String get cardNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {@JsonKey(name: "billingAddress") BillingAddress billingAddress,
      @JsonKey(name: "cardDetails") String cardDetails,
      @JsonKey(name: "cardNetwork") String cardNetwork});

  $BillingAddressCopyWith<$Res> get billingAddress;
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingAddress = null,
    Object? cardDetails = null,
    Object? cardNetwork = null,
  }) {
    return _then(_value.copyWith(
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress,
      cardDetails: null == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as String,
      cardNetwork: null == cardNetwork
          ? _value.cardNetwork
          : cardNetwork // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressCopyWith<$Res> get billingAddress {
    return $BillingAddressCopyWith<$Res>(_value.billingAddress, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "billingAddress") BillingAddress billingAddress,
      @JsonKey(name: "cardDetails") String cardDetails,
      @JsonKey(name: "cardNetwork") String cardNetwork});

  @override
  $BillingAddressCopyWith<$Res> get billingAddress;
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingAddress = null,
    Object? cardDetails = null,
    Object? cardNetwork = null,
  }) {
    return _then(_$InfoImpl(
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress,
      cardDetails: null == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as String,
      cardNetwork: null == cardNetwork
          ? _value.cardNetwork
          : cardNetwork // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: "billingAddress") required this.billingAddress,
      @JsonKey(name: "cardDetails") required this.cardDetails,
      @JsonKey(name: "cardNetwork") required this.cardNetwork});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  @JsonKey(name: "billingAddress")
  final BillingAddress billingAddress;
  @override
  @JsonKey(name: "cardDetails")
  final String cardDetails;
  @override
  @JsonKey(name: "cardNetwork")
  final String cardNetwork;

  @override
  String toString() {
    return 'Info(billingAddress: $billingAddress, cardDetails: $cardDetails, cardNetwork: $cardNetwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.cardDetails, cardDetails) ||
                other.cardDetails == cardDetails) &&
            (identical(other.cardNetwork, cardNetwork) ||
                other.cardNetwork == cardNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, billingAddress, cardDetails, cardNetwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoImplToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
          {@JsonKey(name: "billingAddress")
          required final BillingAddress billingAddress,
          @JsonKey(name: "cardDetails") required final String cardDetails,
          @JsonKey(name: "cardNetwork") required final String cardNetwork}) =
      _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  @JsonKey(name: "billingAddress")
  BillingAddress get billingAddress;
  @override
  @JsonKey(name: "cardDetails")
  String get cardDetails;
  @override
  @JsonKey(name: "cardNetwork")
  String get cardNetwork;
  @override
  @JsonKey(ignore: true)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  return _BillingAddress.fromJson(json);
}

/// @nodoc
mixin _$BillingAddress {
  @JsonKey(name: "address1")
  String get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "countryCode")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "locality")
  String get locality => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "postalCode")
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingAddressCopyWith<BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressCopyWith<$Res> {
  factory $BillingAddressCopyWith(
          BillingAddress value, $Res Function(BillingAddress) then) =
      _$BillingAddressCopyWithImpl<$Res, BillingAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "address1") String address1,
      @JsonKey(name: "countryCode") String countryCode,
      @JsonKey(name: "locality") String locality,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "postalCode") String postalCode});
}

/// @nodoc
class _$BillingAddressCopyWithImpl<$Res, $Val extends BillingAddress>
    implements $BillingAddressCopyWith<$Res> {
  _$BillingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? countryCode = null,
    Object? locality = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingAddressImplCopyWith<$Res>
    implements $BillingAddressCopyWith<$Res> {
  factory _$$BillingAddressImplCopyWith(_$BillingAddressImpl value,
          $Res Function(_$BillingAddressImpl) then) =
      __$$BillingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address1") String address1,
      @JsonKey(name: "countryCode") String countryCode,
      @JsonKey(name: "locality") String locality,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "postalCode") String postalCode});
}

/// @nodoc
class __$$BillingAddressImplCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$BillingAddressImpl>
    implements _$$BillingAddressImplCopyWith<$Res> {
  __$$BillingAddressImplCopyWithImpl(
      _$BillingAddressImpl _value, $Res Function(_$BillingAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? countryCode = null,
    Object? locality = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
  }) {
    return _then(_$BillingAddressImpl(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingAddressImpl implements _BillingAddress {
  const _$BillingAddressImpl(
      {@JsonKey(name: "address1") required this.address1,
      @JsonKey(name: "countryCode") required this.countryCode,
      @JsonKey(name: "locality") required this.locality,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "phoneNumber") required this.phoneNumber,
      @JsonKey(name: "postalCode") required this.postalCode});

  factory _$BillingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingAddressImplFromJson(json);

  @override
  @JsonKey(name: "address1")
  final String address1;
  @override
  @JsonKey(name: "countryCode")
  final String countryCode;
  @override
  @JsonKey(name: "locality")
  final String locality;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @override
  @JsonKey(name: "postalCode")
  final String postalCode;

  @override
  String toString() {
    return 'BillingAddress(address1: $address1, countryCode: $countryCode, locality: $locality, name: $name, phoneNumber: $phoneNumber, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingAddressImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address1, countryCode, locality,
      name, phoneNumber, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      __$$BillingAddressImplCopyWithImpl<_$BillingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingAddressImplToJson(
      this,
    );
  }
}

abstract class _BillingAddress implements BillingAddress {
  const factory _BillingAddress(
          {@JsonKey(name: "address1") required final String address1,
          @JsonKey(name: "countryCode") required final String countryCode,
          @JsonKey(name: "locality") required final String locality,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "phoneNumber") required final String phoneNumber,
          @JsonKey(name: "postalCode") required final String postalCode}) =
      _$BillingAddressImpl;

  factory _BillingAddress.fromJson(Map<String, dynamic> json) =
      _$BillingAddressImpl.fromJson;

  @override
  @JsonKey(name: "address1")
  String get address1;
  @override
  @JsonKey(name: "countryCode")
  String get countryCode;
  @override
  @JsonKey(name: "locality")
  String get locality;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(name: "postalCode")
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenizationData _$TokenizationDataFromJson(Map<String, dynamic> json) {
  return _TokenizationData.fromJson(json);
}

/// @nodoc
mixin _$TokenizationData {
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenizationDataCopyWith<TokenizationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenizationDataCopyWith<$Res> {
  factory $TokenizationDataCopyWith(
          TokenizationData value, $Res Function(TokenizationData) then) =
      _$TokenizationDataCopyWithImpl<$Res, TokenizationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") String token,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class _$TokenizationDataCopyWithImpl<$Res, $Val extends TokenizationData>
    implements $TokenizationDataCopyWith<$Res> {
  _$TokenizationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenizationDataImplCopyWith<$Res>
    implements $TokenizationDataCopyWith<$Res> {
  factory _$$TokenizationDataImplCopyWith(_$TokenizationDataImpl value,
          $Res Function(_$TokenizationDataImpl) then) =
      __$$TokenizationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") String token,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$TokenizationDataImplCopyWithImpl<$Res>
    extends _$TokenizationDataCopyWithImpl<$Res, _$TokenizationDataImpl>
    implements _$$TokenizationDataImplCopyWith<$Res> {
  __$$TokenizationDataImplCopyWithImpl(_$TokenizationDataImpl _value,
      $Res Function(_$TokenizationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? type = null,
  }) {
    return _then(_$TokenizationDataImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenizationDataImpl implements _TokenizationData {
  const _$TokenizationDataImpl(
      {@JsonKey(name: "token") required this.token,
      @JsonKey(name: "type") required this.type});

  factory _$TokenizationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenizationDataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String token;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'TokenizationData(token: $token, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenizationDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenizationDataImplCopyWith<_$TokenizationDataImpl> get copyWith =>
      __$$TokenizationDataImplCopyWithImpl<_$TokenizationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenizationDataImplToJson(
      this,
    );
  }
}

abstract class _TokenizationData implements TokenizationData {
  const factory _TokenizationData(
          {@JsonKey(name: "token") required final String token,
          @JsonKey(name: "type") required final String type}) =
      _$TokenizationDataImpl;

  factory _TokenizationData.fromJson(Map<String, dynamic> json) =
      _$TokenizationDataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$TokenizationDataImplCopyWith<_$TokenizationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
