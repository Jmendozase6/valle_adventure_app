// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_metadata")
  UserMetadata get userMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "new_email")
  dynamic get newEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  dynamic get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_metadata") UserMetadata userMetadata,
      @JsonKey(name: "new_email") dynamic newEmail,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") dynamic phone});

  $UserMetadataCopyWith<$Res> get userMetadata;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userMetadata = null,
    Object? newEmail = freezed,
    Object? email = null,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata,
      newEmail: freezed == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetadataCopyWith<$Res> get userMetadata {
    return $UserMetadataCopyWith<$Res>(_value.userMetadata, (value) {
      return _then(_value.copyWith(userMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_metadata") UserMetadata userMetadata,
      @JsonKey(name: "new_email") dynamic newEmail,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") dynamic phone});

  @override
  $UserMetadataCopyWith<$Res> get userMetadata;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userMetadata = null,
    Object? newEmail = freezed,
    Object? email = null,
    Object? phone = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata,
      newEmail: freezed == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_metadata") required this.userMetadata,
      @JsonKey(name: "new_email") required this.newEmail,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "phone") required this.phone});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "user_metadata")
  final UserMetadata userMetadata;
  @override
  @JsonKey(name: "new_email")
  final dynamic newEmail;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phone")
  final dynamic phone;

  @override
  String toString() {
    return 'UserModel(id: $id, userMetadata: $userMetadata, newEmail: $newEmail, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userMetadata, userMetadata) ||
                other.userMetadata == userMetadata) &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userMetadata,
      const DeepCollectionEquality().hash(newEmail),
      email,
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "user_metadata") required final UserMetadata userMetadata,
      @JsonKey(name: "new_email") required final dynamic newEmail,
      @JsonKey(name: "email") required final String email,
      @JsonKey(name: "phone") required final dynamic phone}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "user_metadata")
  UserMetadata get userMetadata;
  @override
  @JsonKey(name: "new_email")
  dynamic get newEmail;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phone")
  dynamic get phone;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMetadata _$UserMetadataFromJson(Map<String, dynamic> json) {
  return _UserMetadata.fromJson(json);
}

/// @nodoc
mixin _$UserMetadata {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMetadataCopyWith<UserMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetadataCopyWith<$Res> {
  factory $UserMetadataCopyWith(
          UserMetadata value, $Res Function(UserMetadata) then) =
      _$UserMetadataCopyWithImpl<$Res, UserMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class _$UserMetadataCopyWithImpl<$Res, $Val extends UserMetadata>
    implements $UserMetadataCopyWith<$Res> {
  _$UserMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? lastName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMetadataImplCopyWith<$Res>
    implements $UserMetadataCopyWith<$Res> {
  factory _$$UserMetadataImplCopyWith(
          _$UserMetadataImpl value, $Res Function(_$UserMetadataImpl) then) =
      __$$UserMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$UserMetadataImplCopyWithImpl<$Res>
    extends _$UserMetadataCopyWithImpl<$Res, _$UserMetadataImpl>
    implements _$$UserMetadataImplCopyWith<$Res> {
  __$$UserMetadataImplCopyWithImpl(
      _$UserMetadataImpl _value, $Res Function(_$UserMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? lastName = null,
    Object? name = null,
  }) {
    return _then(_$UserMetadataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMetadataImpl implements _UserMetadata {
  const _$UserMetadataImpl(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "name") required this.name});

  factory _$UserMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMetadataImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'UserMetadata(email: $email, lastName: $lastName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMetadataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, lastName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      __$$UserMetadataImplCopyWithImpl<_$UserMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMetadataImplToJson(
      this,
    );
  }
}

abstract class _UserMetadata implements UserMetadata {
  const factory _UserMetadata(
      {@JsonKey(name: "email") required final String email,
      @JsonKey(name: "last_name") required final String lastName,
      @JsonKey(name: "name") required final String name}) = _$UserMetadataImpl;

  factory _UserMetadata.fromJson(Map<String, dynamic> json) =
      _$UserMetadataImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
