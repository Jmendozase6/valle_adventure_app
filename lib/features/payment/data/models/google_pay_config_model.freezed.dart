// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_pay_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GooglePayConfigModel _$GooglePayConfigModelFromJson(Map<String, dynamic> json) {
  return _GooglePayConfigModel.fromJson(json);
}

/// @nodoc
mixin _$GooglePayConfigModel {
  @JsonKey(name: "provider")
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GooglePayConfigModelCopyWith<GooglePayConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePayConfigModelCopyWith<$Res> {
  factory $GooglePayConfigModelCopyWith(GooglePayConfigModel value,
          $Res Function(GooglePayConfigModel) then) =
      _$GooglePayConfigModelCopyWithImpl<$Res, GooglePayConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "provider") String provider,
      @JsonKey(name: "data") Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$GooglePayConfigModelCopyWithImpl<$Res,
        $Val extends GooglePayConfigModel>
    implements $GooglePayConfigModelCopyWith<$Res> {
  _$GooglePayConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GooglePayConfigModelImplCopyWith<$Res>
    implements $GooglePayConfigModelCopyWith<$Res> {
  factory _$$GooglePayConfigModelImplCopyWith(_$GooglePayConfigModelImpl value,
          $Res Function(_$GooglePayConfigModelImpl) then) =
      __$$GooglePayConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "provider") String provider,
      @JsonKey(name: "data") Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GooglePayConfigModelImplCopyWithImpl<$Res>
    extends _$GooglePayConfigModelCopyWithImpl<$Res, _$GooglePayConfigModelImpl>
    implements _$$GooglePayConfigModelImplCopyWith<$Res> {
  __$$GooglePayConfigModelImplCopyWithImpl(_$GooglePayConfigModelImpl _value,
      $Res Function(_$GooglePayConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? data = null,
  }) {
    return _then(_$GooglePayConfigModelImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GooglePayConfigModelImpl implements _GooglePayConfigModel {
  const _$GooglePayConfigModelImpl(
      {@JsonKey(name: "provider") required this.provider,
      @JsonKey(name: "data") required this.data});

  factory _$GooglePayConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GooglePayConfigModelImplFromJson(json);

  @override
  @JsonKey(name: "provider")
  final String provider;
  @override
  @JsonKey(name: "data")
  final Data data;

  @override
  String toString() {
    return 'GooglePayConfigModel(provider: $provider, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglePayConfigModelImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GooglePayConfigModelImplCopyWith<_$GooglePayConfigModelImpl>
      get copyWith =>
          __$$GooglePayConfigModelImplCopyWithImpl<_$GooglePayConfigModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GooglePayConfigModelImplToJson(
      this,
    );
  }
}

abstract class _GooglePayConfigModel implements GooglePayConfigModel {
  const factory _GooglePayConfigModel(
          {@JsonKey(name: "provider") required final String provider,
          @JsonKey(name: "data") required final Data data}) =
      _$GooglePayConfigModelImpl;

  factory _GooglePayConfigModel.fromJson(Map<String, dynamic> json) =
      _$GooglePayConfigModelImpl.fromJson;

  @override
  @JsonKey(name: "provider")
  String get provider;
  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$GooglePayConfigModelImplCopyWith<_$GooglePayConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "environment")
  String get environment => throw _privateConstructorUsedError;
  @JsonKey(name: "apiVersion")
  int get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "apiVersionMinor")
  int get apiVersionMinor => throw _privateConstructorUsedError;
  @JsonKey(name: "allowedPaymentMethods")
  List<AllowedPaymentMethod> get allowedPaymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "merchantInfo")
  MerchantInfo get merchantInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionInfo")
  TransactionInfo get transactionInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "environment") String environment,
      @JsonKey(name: "apiVersion") int apiVersion,
      @JsonKey(name: "apiVersionMinor") int apiVersionMinor,
      @JsonKey(name: "allowedPaymentMethods")
      List<AllowedPaymentMethod> allowedPaymentMethods,
      @JsonKey(name: "merchantInfo") MerchantInfo merchantInfo,
      @JsonKey(name: "transactionInfo") TransactionInfo transactionInfo});

  $MerchantInfoCopyWith<$Res> get merchantInfo;
  $TransactionInfoCopyWith<$Res> get transactionInfo;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = null,
    Object? apiVersion = null,
    Object? apiVersionMinor = null,
    Object? allowedPaymentMethods = null,
    Object? merchantInfo = null,
    Object? transactionInfo = null,
  }) {
    return _then(_value.copyWith(
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      apiVersionMinor: null == apiVersionMinor
          ? _value.apiVersionMinor
          : apiVersionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      allowedPaymentMethods: null == allowedPaymentMethods
          ? _value.allowedPaymentMethods
          : allowedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<AllowedPaymentMethod>,
      merchantInfo: null == merchantInfo
          ? _value.merchantInfo
          : merchantInfo // ignore: cast_nullable_to_non_nullable
              as MerchantInfo,
      transactionInfo: null == transactionInfo
          ? _value.transactionInfo
          : transactionInfo // ignore: cast_nullable_to_non_nullable
              as TransactionInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantInfoCopyWith<$Res> get merchantInfo {
    return $MerchantInfoCopyWith<$Res>(_value.merchantInfo, (value) {
      return _then(_value.copyWith(merchantInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionInfoCopyWith<$Res> get transactionInfo {
    return $TransactionInfoCopyWith<$Res>(_value.transactionInfo, (value) {
      return _then(_value.copyWith(transactionInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "environment") String environment,
      @JsonKey(name: "apiVersion") int apiVersion,
      @JsonKey(name: "apiVersionMinor") int apiVersionMinor,
      @JsonKey(name: "allowedPaymentMethods")
      List<AllowedPaymentMethod> allowedPaymentMethods,
      @JsonKey(name: "merchantInfo") MerchantInfo merchantInfo,
      @JsonKey(name: "transactionInfo") TransactionInfo transactionInfo});

  @override
  $MerchantInfoCopyWith<$Res> get merchantInfo;
  @override
  $TransactionInfoCopyWith<$Res> get transactionInfo;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = null,
    Object? apiVersion = null,
    Object? apiVersionMinor = null,
    Object? allowedPaymentMethods = null,
    Object? merchantInfo = null,
    Object? transactionInfo = null,
  }) {
    return _then(_$DataImpl(
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      apiVersionMinor: null == apiVersionMinor
          ? _value.apiVersionMinor
          : apiVersionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      allowedPaymentMethods: null == allowedPaymentMethods
          ? _value._allowedPaymentMethods
          : allowedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<AllowedPaymentMethod>,
      merchantInfo: null == merchantInfo
          ? _value.merchantInfo
          : merchantInfo // ignore: cast_nullable_to_non_nullable
              as MerchantInfo,
      transactionInfo: null == transactionInfo
          ? _value.transactionInfo
          : transactionInfo // ignore: cast_nullable_to_non_nullable
              as TransactionInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "environment") required this.environment,
      @JsonKey(name: "apiVersion") required this.apiVersion,
      @JsonKey(name: "apiVersionMinor") required this.apiVersionMinor,
      @JsonKey(name: "allowedPaymentMethods")
      required final List<AllowedPaymentMethod> allowedPaymentMethods,
      @JsonKey(name: "merchantInfo") required this.merchantInfo,
      @JsonKey(name: "transactionInfo") required this.transactionInfo})
      : _allowedPaymentMethods = allowedPaymentMethods;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "environment")
  final String environment;
  @override
  @JsonKey(name: "apiVersion")
  final int apiVersion;
  @override
  @JsonKey(name: "apiVersionMinor")
  final int apiVersionMinor;
  final List<AllowedPaymentMethod> _allowedPaymentMethods;
  @override
  @JsonKey(name: "allowedPaymentMethods")
  List<AllowedPaymentMethod> get allowedPaymentMethods {
    if (_allowedPaymentMethods is EqualUnmodifiableListView)
      return _allowedPaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedPaymentMethods);
  }

  @override
  @JsonKey(name: "merchantInfo")
  final MerchantInfo merchantInfo;
  @override
  @JsonKey(name: "transactionInfo")
  final TransactionInfo transactionInfo;

  @override
  String toString() {
    return 'Data(environment: $environment, apiVersion: $apiVersion, apiVersionMinor: $apiVersionMinor, allowedPaymentMethods: $allowedPaymentMethods, merchantInfo: $merchantInfo, transactionInfo: $transactionInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.apiVersionMinor, apiVersionMinor) ||
                other.apiVersionMinor == apiVersionMinor) &&
            const DeepCollectionEquality()
                .equals(other._allowedPaymentMethods, _allowedPaymentMethods) &&
            (identical(other.merchantInfo, merchantInfo) ||
                other.merchantInfo == merchantInfo) &&
            (identical(other.transactionInfo, transactionInfo) ||
                other.transactionInfo == transactionInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      environment,
      apiVersion,
      apiVersionMinor,
      const DeepCollectionEquality().hash(_allowedPaymentMethods),
      merchantInfo,
      transactionInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "environment") required final String environment,
      @JsonKey(name: "apiVersion") required final int apiVersion,
      @JsonKey(name: "apiVersionMinor") required final int apiVersionMinor,
      @JsonKey(name: "allowedPaymentMethods")
      required final List<AllowedPaymentMethod> allowedPaymentMethods,
      @JsonKey(name: "merchantInfo") required final MerchantInfo merchantInfo,
      @JsonKey(name: "transactionInfo")
      required final TransactionInfo transactionInfo}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "environment")
  String get environment;
  @override
  @JsonKey(name: "apiVersion")
  int get apiVersion;
  @override
  @JsonKey(name: "apiVersionMinor")
  int get apiVersionMinor;
  @override
  @JsonKey(name: "allowedPaymentMethods")
  List<AllowedPaymentMethod> get allowedPaymentMethods;
  @override
  @JsonKey(name: "merchantInfo")
  MerchantInfo get merchantInfo;
  @override
  @JsonKey(name: "transactionInfo")
  TransactionInfo get transactionInfo;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllowedPaymentMethod _$AllowedPaymentMethodFromJson(Map<String, dynamic> json) {
  return _AllowedPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$AllowedPaymentMethod {
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenizationSpecification")
  TokenizationSpecification get tokenizationSpecification =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "parameters")
  AllowedPaymentMethodParameters get parameters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllowedPaymentMethodCopyWith<AllowedPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowedPaymentMethodCopyWith<$Res> {
  factory $AllowedPaymentMethodCopyWith(AllowedPaymentMethod value,
          $Res Function(AllowedPaymentMethod) then) =
      _$AllowedPaymentMethodCopyWithImpl<$Res, AllowedPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "tokenizationSpecification")
      TokenizationSpecification tokenizationSpecification,
      @JsonKey(name: "parameters") AllowedPaymentMethodParameters parameters});

  $TokenizationSpecificationCopyWith<$Res> get tokenizationSpecification;
  $AllowedPaymentMethodParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class _$AllowedPaymentMethodCopyWithImpl<$Res,
        $Val extends AllowedPaymentMethod>
    implements $AllowedPaymentMethodCopyWith<$Res> {
  _$AllowedPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? tokenizationSpecification = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tokenizationSpecification: null == tokenizationSpecification
          ? _value.tokenizationSpecification
          : tokenizationSpecification // ignore: cast_nullable_to_non_nullable
              as TokenizationSpecification,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as AllowedPaymentMethodParameters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenizationSpecificationCopyWith<$Res> get tokenizationSpecification {
    return $TokenizationSpecificationCopyWith<$Res>(
        _value.tokenizationSpecification, (value) {
      return _then(_value.copyWith(tokenizationSpecification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AllowedPaymentMethodParametersCopyWith<$Res> get parameters {
    return $AllowedPaymentMethodParametersCopyWith<$Res>(_value.parameters,
        (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllowedPaymentMethodImplCopyWith<$Res>
    implements $AllowedPaymentMethodCopyWith<$Res> {
  factory _$$AllowedPaymentMethodImplCopyWith(_$AllowedPaymentMethodImpl value,
          $Res Function(_$AllowedPaymentMethodImpl) then) =
      __$$AllowedPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "tokenizationSpecification")
      TokenizationSpecification tokenizationSpecification,
      @JsonKey(name: "parameters") AllowedPaymentMethodParameters parameters});

  @override
  $TokenizationSpecificationCopyWith<$Res> get tokenizationSpecification;
  @override
  $AllowedPaymentMethodParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$AllowedPaymentMethodImplCopyWithImpl<$Res>
    extends _$AllowedPaymentMethodCopyWithImpl<$Res, _$AllowedPaymentMethodImpl>
    implements _$$AllowedPaymentMethodImplCopyWith<$Res> {
  __$$AllowedPaymentMethodImplCopyWithImpl(_$AllowedPaymentMethodImpl _value,
      $Res Function(_$AllowedPaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? tokenizationSpecification = null,
    Object? parameters = null,
  }) {
    return _then(_$AllowedPaymentMethodImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tokenizationSpecification: null == tokenizationSpecification
          ? _value.tokenizationSpecification
          : tokenizationSpecification // ignore: cast_nullable_to_non_nullable
              as TokenizationSpecification,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as AllowedPaymentMethodParameters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowedPaymentMethodImpl implements _AllowedPaymentMethod {
  const _$AllowedPaymentMethodImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "tokenizationSpecification")
      required this.tokenizationSpecification,
      @JsonKey(name: "parameters") required this.parameters});

  factory _$AllowedPaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowedPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "tokenizationSpecification")
  final TokenizationSpecification tokenizationSpecification;
  @override
  @JsonKey(name: "parameters")
  final AllowedPaymentMethodParameters parameters;

  @override
  String toString() {
    return 'AllowedPaymentMethod(type: $type, tokenizationSpecification: $tokenizationSpecification, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowedPaymentMethodImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tokenizationSpecification,
                    tokenizationSpecification) ||
                other.tokenizationSpecification == tokenizationSpecification) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, tokenizationSpecification, parameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowedPaymentMethodImplCopyWith<_$AllowedPaymentMethodImpl>
      get copyWith =>
          __$$AllowedPaymentMethodImplCopyWithImpl<_$AllowedPaymentMethodImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowedPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _AllowedPaymentMethod implements AllowedPaymentMethod {
  const factory _AllowedPaymentMethod(
          {@JsonKey(name: "type") required final String type,
          @JsonKey(name: "tokenizationSpecification")
          required final TokenizationSpecification tokenizationSpecification,
          @JsonKey(name: "parameters")
          required final AllowedPaymentMethodParameters parameters}) =
      _$AllowedPaymentMethodImpl;

  factory _AllowedPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$AllowedPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "tokenizationSpecification")
  TokenizationSpecification get tokenizationSpecification;
  @override
  @JsonKey(name: "parameters")
  AllowedPaymentMethodParameters get parameters;
  @override
  @JsonKey(ignore: true)
  _$$AllowedPaymentMethodImplCopyWith<_$AllowedPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllowedPaymentMethodParameters _$AllowedPaymentMethodParametersFromJson(
    Map<String, dynamic> json) {
  return _AllowedPaymentMethodParameters.fromJson(json);
}

/// @nodoc
mixin _$AllowedPaymentMethodParameters {
  @JsonKey(name: "allowedCardNetworks")
  List<String> get allowedCardNetworks => throw _privateConstructorUsedError;
  @JsonKey(name: "allowedAuthMethods")
  List<String> get allowedAuthMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "billingAddressRequired")
  bool get billingAddressRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "billingAddressParameters")
  BillingAddressParameters get billingAddressParameters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllowedPaymentMethodParametersCopyWith<AllowedPaymentMethodParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowedPaymentMethodParametersCopyWith<$Res> {
  factory $AllowedPaymentMethodParametersCopyWith(
          AllowedPaymentMethodParameters value,
          $Res Function(AllowedPaymentMethodParameters) then) =
      _$AllowedPaymentMethodParametersCopyWithImpl<$Res,
          AllowedPaymentMethodParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: "allowedCardNetworks") List<String> allowedCardNetworks,
      @JsonKey(name: "allowedAuthMethods") List<String> allowedAuthMethods,
      @JsonKey(name: "billingAddressRequired") bool billingAddressRequired,
      @JsonKey(name: "billingAddressParameters")
      BillingAddressParameters billingAddressParameters});

  $BillingAddressParametersCopyWith<$Res> get billingAddressParameters;
}

/// @nodoc
class _$AllowedPaymentMethodParametersCopyWithImpl<$Res,
        $Val extends AllowedPaymentMethodParameters>
    implements $AllowedPaymentMethodParametersCopyWith<$Res> {
  _$AllowedPaymentMethodParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedCardNetworks = null,
    Object? allowedAuthMethods = null,
    Object? billingAddressRequired = null,
    Object? billingAddressParameters = null,
  }) {
    return _then(_value.copyWith(
      allowedCardNetworks: null == allowedCardNetworks
          ? _value.allowedCardNetworks
          : allowedCardNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allowedAuthMethods: null == allowedAuthMethods
          ? _value.allowedAuthMethods
          : allowedAuthMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      billingAddressRequired: null == billingAddressRequired
          ? _value.billingAddressRequired
          : billingAddressRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddressParameters: null == billingAddressParameters
          ? _value.billingAddressParameters
          : billingAddressParameters // ignore: cast_nullable_to_non_nullable
              as BillingAddressParameters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressParametersCopyWith<$Res> get billingAddressParameters {
    return $BillingAddressParametersCopyWith<$Res>(
        _value.billingAddressParameters, (value) {
      return _then(_value.copyWith(billingAddressParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllowedPaymentMethodParametersImplCopyWith<$Res>
    implements $AllowedPaymentMethodParametersCopyWith<$Res> {
  factory _$$AllowedPaymentMethodParametersImplCopyWith(
          _$AllowedPaymentMethodParametersImpl value,
          $Res Function(_$AllowedPaymentMethodParametersImpl) then) =
      __$$AllowedPaymentMethodParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "allowedCardNetworks") List<String> allowedCardNetworks,
      @JsonKey(name: "allowedAuthMethods") List<String> allowedAuthMethods,
      @JsonKey(name: "billingAddressRequired") bool billingAddressRequired,
      @JsonKey(name: "billingAddressParameters")
      BillingAddressParameters billingAddressParameters});

  @override
  $BillingAddressParametersCopyWith<$Res> get billingAddressParameters;
}

/// @nodoc
class __$$AllowedPaymentMethodParametersImplCopyWithImpl<$Res>
    extends _$AllowedPaymentMethodParametersCopyWithImpl<$Res,
        _$AllowedPaymentMethodParametersImpl>
    implements _$$AllowedPaymentMethodParametersImplCopyWith<$Res> {
  __$$AllowedPaymentMethodParametersImplCopyWithImpl(
      _$AllowedPaymentMethodParametersImpl _value,
      $Res Function(_$AllowedPaymentMethodParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedCardNetworks = null,
    Object? allowedAuthMethods = null,
    Object? billingAddressRequired = null,
    Object? billingAddressParameters = null,
  }) {
    return _then(_$AllowedPaymentMethodParametersImpl(
      allowedCardNetworks: null == allowedCardNetworks
          ? _value._allowedCardNetworks
          : allowedCardNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allowedAuthMethods: null == allowedAuthMethods
          ? _value._allowedAuthMethods
          : allowedAuthMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      billingAddressRequired: null == billingAddressRequired
          ? _value.billingAddressRequired
          : billingAddressRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddressParameters: null == billingAddressParameters
          ? _value.billingAddressParameters
          : billingAddressParameters // ignore: cast_nullable_to_non_nullable
              as BillingAddressParameters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowedPaymentMethodParametersImpl
    implements _AllowedPaymentMethodParameters {
  const _$AllowedPaymentMethodParametersImpl(
      {@JsonKey(name: "allowedCardNetworks")
      required final List<String> allowedCardNetworks,
      @JsonKey(name: "allowedAuthMethods")
      required final List<String> allowedAuthMethods,
      @JsonKey(name: "billingAddressRequired")
      required this.billingAddressRequired,
      @JsonKey(name: "billingAddressParameters")
      required this.billingAddressParameters})
      : _allowedCardNetworks = allowedCardNetworks,
        _allowedAuthMethods = allowedAuthMethods;

  factory _$AllowedPaymentMethodParametersImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AllowedPaymentMethodParametersImplFromJson(json);

  final List<String> _allowedCardNetworks;
  @override
  @JsonKey(name: "allowedCardNetworks")
  List<String> get allowedCardNetworks {
    if (_allowedCardNetworks is EqualUnmodifiableListView)
      return _allowedCardNetworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedCardNetworks);
  }

  final List<String> _allowedAuthMethods;
  @override
  @JsonKey(name: "allowedAuthMethods")
  List<String> get allowedAuthMethods {
    if (_allowedAuthMethods is EqualUnmodifiableListView)
      return _allowedAuthMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedAuthMethods);
  }

  @override
  @JsonKey(name: "billingAddressRequired")
  final bool billingAddressRequired;
  @override
  @JsonKey(name: "billingAddressParameters")
  final BillingAddressParameters billingAddressParameters;

  @override
  String toString() {
    return 'AllowedPaymentMethodParameters(allowedCardNetworks: $allowedCardNetworks, allowedAuthMethods: $allowedAuthMethods, billingAddressRequired: $billingAddressRequired, billingAddressParameters: $billingAddressParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowedPaymentMethodParametersImpl &&
            const DeepCollectionEquality()
                .equals(other._allowedCardNetworks, _allowedCardNetworks) &&
            const DeepCollectionEquality()
                .equals(other._allowedAuthMethods, _allowedAuthMethods) &&
            (identical(other.billingAddressRequired, billingAddressRequired) ||
                other.billingAddressRequired == billingAddressRequired) &&
            (identical(
                    other.billingAddressParameters, billingAddressParameters) ||
                other.billingAddressParameters == billingAddressParameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allowedCardNetworks),
      const DeepCollectionEquality().hash(_allowedAuthMethods),
      billingAddressRequired,
      billingAddressParameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowedPaymentMethodParametersImplCopyWith<
          _$AllowedPaymentMethodParametersImpl>
      get copyWith => __$$AllowedPaymentMethodParametersImplCopyWithImpl<
          _$AllowedPaymentMethodParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowedPaymentMethodParametersImplToJson(
      this,
    );
  }
}

abstract class _AllowedPaymentMethodParameters
    implements AllowedPaymentMethodParameters {
  const factory _AllowedPaymentMethodParameters(
          {@JsonKey(name: "allowedCardNetworks")
          required final List<String> allowedCardNetworks,
          @JsonKey(name: "allowedAuthMethods")
          required final List<String> allowedAuthMethods,
          @JsonKey(name: "billingAddressRequired")
          required final bool billingAddressRequired,
          @JsonKey(name: "billingAddressParameters")
          required final BillingAddressParameters billingAddressParameters}) =
      _$AllowedPaymentMethodParametersImpl;

  factory _AllowedPaymentMethodParameters.fromJson(Map<String, dynamic> json) =
      _$AllowedPaymentMethodParametersImpl.fromJson;

  @override
  @JsonKey(name: "allowedCardNetworks")
  List<String> get allowedCardNetworks;
  @override
  @JsonKey(name: "allowedAuthMethods")
  List<String> get allowedAuthMethods;
  @override
  @JsonKey(name: "billingAddressRequired")
  bool get billingAddressRequired;
  @override
  @JsonKey(name: "billingAddressParameters")
  BillingAddressParameters get billingAddressParameters;
  @override
  @JsonKey(ignore: true)
  _$$AllowedPaymentMethodParametersImplCopyWith<
          _$AllowedPaymentMethodParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BillingAddressParameters _$BillingAddressParametersFromJson(
    Map<String, dynamic> json) {
  return _BillingAddressParameters.fromJson(json);
}

/// @nodoc
mixin _$BillingAddressParameters {
  @JsonKey(name: "format")
  String get format => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumberRequired")
  bool get phoneNumberRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingAddressParametersCopyWith<BillingAddressParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressParametersCopyWith<$Res> {
  factory $BillingAddressParametersCopyWith(BillingAddressParameters value,
          $Res Function(BillingAddressParameters) then) =
      _$BillingAddressParametersCopyWithImpl<$Res, BillingAddressParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: "format") String format,
      @JsonKey(name: "phoneNumberRequired") bool phoneNumberRequired});
}

/// @nodoc
class _$BillingAddressParametersCopyWithImpl<$Res,
        $Val extends BillingAddressParameters>
    implements $BillingAddressParametersCopyWith<$Res> {
  _$BillingAddressParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? phoneNumberRequired = null,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberRequired: null == phoneNumberRequired
          ? _value.phoneNumberRequired
          : phoneNumberRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingAddressParametersImplCopyWith<$Res>
    implements $BillingAddressParametersCopyWith<$Res> {
  factory _$$BillingAddressParametersImplCopyWith(
          _$BillingAddressParametersImpl value,
          $Res Function(_$BillingAddressParametersImpl) then) =
      __$$BillingAddressParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "format") String format,
      @JsonKey(name: "phoneNumberRequired") bool phoneNumberRequired});
}

/// @nodoc
class __$$BillingAddressParametersImplCopyWithImpl<$Res>
    extends _$BillingAddressParametersCopyWithImpl<$Res,
        _$BillingAddressParametersImpl>
    implements _$$BillingAddressParametersImplCopyWith<$Res> {
  __$$BillingAddressParametersImplCopyWithImpl(
      _$BillingAddressParametersImpl _value,
      $Res Function(_$BillingAddressParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? phoneNumberRequired = null,
  }) {
    return _then(_$BillingAddressParametersImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberRequired: null == phoneNumberRequired
          ? _value.phoneNumberRequired
          : phoneNumberRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingAddressParametersImpl implements _BillingAddressParameters {
  const _$BillingAddressParametersImpl(
      {@JsonKey(name: "format") required this.format,
      @JsonKey(name: "phoneNumberRequired") required this.phoneNumberRequired});

  factory _$BillingAddressParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingAddressParametersImplFromJson(json);

  @override
  @JsonKey(name: "format")
  final String format;
  @override
  @JsonKey(name: "phoneNumberRequired")
  final bool phoneNumberRequired;

  @override
  String toString() {
    return 'BillingAddressParameters(format: $format, phoneNumberRequired: $phoneNumberRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingAddressParametersImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.phoneNumberRequired, phoneNumberRequired) ||
                other.phoneNumberRequired == phoneNumberRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, format, phoneNumberRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingAddressParametersImplCopyWith<_$BillingAddressParametersImpl>
      get copyWith => __$$BillingAddressParametersImplCopyWithImpl<
          _$BillingAddressParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingAddressParametersImplToJson(
      this,
    );
  }
}

abstract class _BillingAddressParameters implements BillingAddressParameters {
  const factory _BillingAddressParameters(
          {@JsonKey(name: "format") required final String format,
          @JsonKey(name: "phoneNumberRequired")
          required final bool phoneNumberRequired}) =
      _$BillingAddressParametersImpl;

  factory _BillingAddressParameters.fromJson(Map<String, dynamic> json) =
      _$BillingAddressParametersImpl.fromJson;

  @override
  @JsonKey(name: "format")
  String get format;
  @override
  @JsonKey(name: "phoneNumberRequired")
  bool get phoneNumberRequired;
  @override
  @JsonKey(ignore: true)
  _$$BillingAddressParametersImplCopyWith<_$BillingAddressParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenizationSpecification _$TokenizationSpecificationFromJson(
    Map<String, dynamic> json) {
  return _TokenizationSpecification.fromJson(json);
}

/// @nodoc
mixin _$TokenizationSpecification {
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "parameters")
  TokenizationSpecificationParameters get parameters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenizationSpecificationCopyWith<TokenizationSpecification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenizationSpecificationCopyWith<$Res> {
  factory $TokenizationSpecificationCopyWith(TokenizationSpecification value,
          $Res Function(TokenizationSpecification) then) =
      _$TokenizationSpecificationCopyWithImpl<$Res, TokenizationSpecification>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "parameters")
      TokenizationSpecificationParameters parameters});

  $TokenizationSpecificationParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class _$TokenizationSpecificationCopyWithImpl<$Res,
        $Val extends TokenizationSpecification>
    implements $TokenizationSpecificationCopyWith<$Res> {
  _$TokenizationSpecificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as TokenizationSpecificationParameters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenizationSpecificationParametersCopyWith<$Res> get parameters {
    return $TokenizationSpecificationParametersCopyWith<$Res>(_value.parameters,
        (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenizationSpecificationImplCopyWith<$Res>
    implements $TokenizationSpecificationCopyWith<$Res> {
  factory _$$TokenizationSpecificationImplCopyWith(
          _$TokenizationSpecificationImpl value,
          $Res Function(_$TokenizationSpecificationImpl) then) =
      __$$TokenizationSpecificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "parameters")
      TokenizationSpecificationParameters parameters});

  @override
  $TokenizationSpecificationParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$TokenizationSpecificationImplCopyWithImpl<$Res>
    extends _$TokenizationSpecificationCopyWithImpl<$Res,
        _$TokenizationSpecificationImpl>
    implements _$$TokenizationSpecificationImplCopyWith<$Res> {
  __$$TokenizationSpecificationImplCopyWithImpl(
      _$TokenizationSpecificationImpl _value,
      $Res Function(_$TokenizationSpecificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? parameters = null,
  }) {
    return _then(_$TokenizationSpecificationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as TokenizationSpecificationParameters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenizationSpecificationImpl implements _TokenizationSpecification {
  const _$TokenizationSpecificationImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "parameters") required this.parameters});

  factory _$TokenizationSpecificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenizationSpecificationImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "parameters")
  final TokenizationSpecificationParameters parameters;

  @override
  String toString() {
    return 'TokenizationSpecification(type: $type, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenizationSpecificationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, parameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenizationSpecificationImplCopyWith<_$TokenizationSpecificationImpl>
      get copyWith => __$$TokenizationSpecificationImplCopyWithImpl<
          _$TokenizationSpecificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenizationSpecificationImplToJson(
      this,
    );
  }
}

abstract class _TokenizationSpecification implements TokenizationSpecification {
  const factory _TokenizationSpecification(
          {@JsonKey(name: "type") required final String type,
          @JsonKey(name: "parameters")
          required final TokenizationSpecificationParameters parameters}) =
      _$TokenizationSpecificationImpl;

  factory _TokenizationSpecification.fromJson(Map<String, dynamic> json) =
      _$TokenizationSpecificationImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "parameters")
  TokenizationSpecificationParameters get parameters;
  @override
  @JsonKey(ignore: true)
  _$$TokenizationSpecificationImplCopyWith<_$TokenizationSpecificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenizationSpecificationParameters
    _$TokenizationSpecificationParametersFromJson(Map<String, dynamic> json) {
  return _TokenizationSpecificationParameters.fromJson(json);
}

/// @nodoc
mixin _$TokenizationSpecificationParameters {
  @JsonKey(name: "gateway")
  String get gateway => throw _privateConstructorUsedError;
  @JsonKey(name: "gatewayMerchantId")
  String get gatewayMerchantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenizationSpecificationParametersCopyWith<
          TokenizationSpecificationParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenizationSpecificationParametersCopyWith<$Res> {
  factory $TokenizationSpecificationParametersCopyWith(
          TokenizationSpecificationParameters value,
          $Res Function(TokenizationSpecificationParameters) then) =
      _$TokenizationSpecificationParametersCopyWithImpl<$Res,
          TokenizationSpecificationParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: "gateway") String gateway,
      @JsonKey(name: "gatewayMerchantId") String gatewayMerchantId});
}

/// @nodoc
class _$TokenizationSpecificationParametersCopyWithImpl<$Res,
        $Val extends TokenizationSpecificationParameters>
    implements $TokenizationSpecificationParametersCopyWith<$Res> {
  _$TokenizationSpecificationParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateway = null,
    Object? gatewayMerchantId = null,
  }) {
    return _then(_value.copyWith(
      gateway: null == gateway
          ? _value.gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as String,
      gatewayMerchantId: null == gatewayMerchantId
          ? _value.gatewayMerchantId
          : gatewayMerchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenizationSpecificationParametersImplCopyWith<$Res>
    implements $TokenizationSpecificationParametersCopyWith<$Res> {
  factory _$$TokenizationSpecificationParametersImplCopyWith(
          _$TokenizationSpecificationParametersImpl value,
          $Res Function(_$TokenizationSpecificationParametersImpl) then) =
      __$$TokenizationSpecificationParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gateway") String gateway,
      @JsonKey(name: "gatewayMerchantId") String gatewayMerchantId});
}

/// @nodoc
class __$$TokenizationSpecificationParametersImplCopyWithImpl<$Res>
    extends _$TokenizationSpecificationParametersCopyWithImpl<$Res,
        _$TokenizationSpecificationParametersImpl>
    implements _$$TokenizationSpecificationParametersImplCopyWith<$Res> {
  __$$TokenizationSpecificationParametersImplCopyWithImpl(
      _$TokenizationSpecificationParametersImpl _value,
      $Res Function(_$TokenizationSpecificationParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateway = null,
    Object? gatewayMerchantId = null,
  }) {
    return _then(_$TokenizationSpecificationParametersImpl(
      gateway: null == gateway
          ? _value.gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as String,
      gatewayMerchantId: null == gatewayMerchantId
          ? _value.gatewayMerchantId
          : gatewayMerchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenizationSpecificationParametersImpl
    implements _TokenizationSpecificationParameters {
  const _$TokenizationSpecificationParametersImpl(
      {@JsonKey(name: "gateway") required this.gateway,
      @JsonKey(name: "gatewayMerchantId") required this.gatewayMerchantId});

  factory _$TokenizationSpecificationParametersImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenizationSpecificationParametersImplFromJson(json);

  @override
  @JsonKey(name: "gateway")
  final String gateway;
  @override
  @JsonKey(name: "gatewayMerchantId")
  final String gatewayMerchantId;

  @override
  String toString() {
    return 'TokenizationSpecificationParameters(gateway: $gateway, gatewayMerchantId: $gatewayMerchantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenizationSpecificationParametersImpl &&
            (identical(other.gateway, gateway) || other.gateway == gateway) &&
            (identical(other.gatewayMerchantId, gatewayMerchantId) ||
                other.gatewayMerchantId == gatewayMerchantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gateway, gatewayMerchantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenizationSpecificationParametersImplCopyWith<
          _$TokenizationSpecificationParametersImpl>
      get copyWith => __$$TokenizationSpecificationParametersImplCopyWithImpl<
          _$TokenizationSpecificationParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenizationSpecificationParametersImplToJson(
      this,
    );
  }
}

abstract class _TokenizationSpecificationParameters
    implements TokenizationSpecificationParameters {
  const factory _TokenizationSpecificationParameters(
          {@JsonKey(name: "gateway") required final String gateway,
          @JsonKey(name: "gatewayMerchantId")
          required final String gatewayMerchantId}) =
      _$TokenizationSpecificationParametersImpl;

  factory _TokenizationSpecificationParameters.fromJson(
          Map<String, dynamic> json) =
      _$TokenizationSpecificationParametersImpl.fromJson;

  @override
  @JsonKey(name: "gateway")
  String get gateway;
  @override
  @JsonKey(name: "gatewayMerchantId")
  String get gatewayMerchantId;
  @override
  @JsonKey(ignore: true)
  _$$TokenizationSpecificationParametersImplCopyWith<
          _$TokenizationSpecificationParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MerchantInfo _$MerchantInfoFromJson(Map<String, dynamic> json) {
  return _MerchantInfo.fromJson(json);
}

/// @nodoc
mixin _$MerchantInfo {
  @JsonKey(name: "merchantId")
  String get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: "merchantName")
  String get merchantName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantInfoCopyWith<MerchantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantInfoCopyWith<$Res> {
  factory $MerchantInfoCopyWith(
          MerchantInfo value, $Res Function(MerchantInfo) then) =
      _$MerchantInfoCopyWithImpl<$Res, MerchantInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "merchantId") String merchantId,
      @JsonKey(name: "merchantName") String merchantName});
}

/// @nodoc
class _$MerchantInfoCopyWithImpl<$Res, $Val extends MerchantInfo>
    implements $MerchantInfoCopyWith<$Res> {
  _$MerchantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantId = null,
    Object? merchantName = null,
  }) {
    return _then(_value.copyWith(
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantInfoImplCopyWith<$Res>
    implements $MerchantInfoCopyWith<$Res> {
  factory _$$MerchantInfoImplCopyWith(
          _$MerchantInfoImpl value, $Res Function(_$MerchantInfoImpl) then) =
      __$$MerchantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "merchantId") String merchantId,
      @JsonKey(name: "merchantName") String merchantName});
}

/// @nodoc
class __$$MerchantInfoImplCopyWithImpl<$Res>
    extends _$MerchantInfoCopyWithImpl<$Res, _$MerchantInfoImpl>
    implements _$$MerchantInfoImplCopyWith<$Res> {
  __$$MerchantInfoImplCopyWithImpl(
      _$MerchantInfoImpl _value, $Res Function(_$MerchantInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantId = null,
    Object? merchantName = null,
  }) {
    return _then(_$MerchantInfoImpl(
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantInfoImpl implements _MerchantInfo {
  const _$MerchantInfoImpl(
      {@JsonKey(name: "merchantId") required this.merchantId,
      @JsonKey(name: "merchantName") required this.merchantName});

  factory _$MerchantInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantInfoImplFromJson(json);

  @override
  @JsonKey(name: "merchantId")
  final String merchantId;
  @override
  @JsonKey(name: "merchantName")
  final String merchantName;

  @override
  String toString() {
    return 'MerchantInfo(merchantId: $merchantId, merchantName: $merchantName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantInfoImpl &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantId, merchantName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantInfoImplCopyWith<_$MerchantInfoImpl> get copyWith =>
      __$$MerchantInfoImplCopyWithImpl<_$MerchantInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantInfoImplToJson(
      this,
    );
  }
}

abstract class _MerchantInfo implements MerchantInfo {
  const factory _MerchantInfo(
          {@JsonKey(name: "merchantId") required final String merchantId,
          @JsonKey(name: "merchantName") required final String merchantName}) =
      _$MerchantInfoImpl;

  factory _MerchantInfo.fromJson(Map<String, dynamic> json) =
      _$MerchantInfoImpl.fromJson;

  @override
  @JsonKey(name: "merchantId")
  String get merchantId;
  @override
  @JsonKey(name: "merchantName")
  String get merchantName;
  @override
  @JsonKey(ignore: true)
  _$$MerchantInfoImplCopyWith<_$MerchantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionInfo _$TransactionInfoFromJson(Map<String, dynamic> json) {
  return _TransactionInfo.fromJson(json);
}

/// @nodoc
mixin _$TransactionInfo {
  @JsonKey(name: "countryCode")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currencyCode")
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionInfoCopyWith<TransactionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInfoCopyWith<$Res> {
  factory $TransactionInfoCopyWith(
          TransactionInfo value, $Res Function(TransactionInfo) then) =
      _$TransactionInfoCopyWithImpl<$Res, TransactionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "countryCode") String countryCode,
      @JsonKey(name: "currencyCode") String currencyCode});
}

/// @nodoc
class _$TransactionInfoCopyWithImpl<$Res, $Val extends TransactionInfo>
    implements $TransactionInfoCopyWith<$Res> {
  _$TransactionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionInfoImplCopyWith<$Res>
    implements $TransactionInfoCopyWith<$Res> {
  factory _$$TransactionInfoImplCopyWith(_$TransactionInfoImpl value,
          $Res Function(_$TransactionInfoImpl) then) =
      __$$TransactionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "countryCode") String countryCode,
      @JsonKey(name: "currencyCode") String currencyCode});
}

/// @nodoc
class __$$TransactionInfoImplCopyWithImpl<$Res>
    extends _$TransactionInfoCopyWithImpl<$Res, _$TransactionInfoImpl>
    implements _$$TransactionInfoImplCopyWith<$Res> {
  __$$TransactionInfoImplCopyWithImpl(
      _$TransactionInfoImpl _value, $Res Function(_$TransactionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
  }) {
    return _then(_$TransactionInfoImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionInfoImpl implements _TransactionInfo {
  const _$TransactionInfoImpl(
      {@JsonKey(name: "countryCode") required this.countryCode,
      @JsonKey(name: "currencyCode") required this.currencyCode});

  factory _$TransactionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionInfoImplFromJson(json);

  @override
  @JsonKey(name: "countryCode")
  final String countryCode;
  @override
  @JsonKey(name: "currencyCode")
  final String currencyCode;

  @override
  String toString() {
    return 'TransactionInfo(countryCode: $countryCode, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInfoImplCopyWith<_$TransactionInfoImpl> get copyWith =>
      __$$TransactionInfoImplCopyWithImpl<_$TransactionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionInfoImplToJson(
      this,
    );
  }
}

abstract class _TransactionInfo implements TransactionInfo {
  const factory _TransactionInfo(
          {@JsonKey(name: "countryCode") required final String countryCode,
          @JsonKey(name: "currencyCode") required final String currencyCode}) =
      _$TransactionInfoImpl;

  factory _TransactionInfo.fromJson(Map<String, dynamic> json) =
      _$TransactionInfoImpl.fromJson;

  @override
  @JsonKey(name: "countryCode")
  String get countryCode;
  @override
  @JsonKey(name: "currencyCode")
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$TransactionInfoImplCopyWith<_$TransactionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
