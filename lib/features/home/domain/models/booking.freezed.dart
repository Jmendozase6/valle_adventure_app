// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tour_id")
  String get tourId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "id_card")
  String get idCard => throw _privateConstructorUsedError;
  @JsonKey(name: "qty_places")
  int get qtyPlaces => throw _privateConstructorUsedError;
  @JsonKey(name: "reservation_date")
  String get reservationDate => throw _privateConstructorUsedError;
  @JsonKey(name: "partners")
  List<String> get partners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "tour_id") String tourId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "id_card") String idCard,
      @JsonKey(name: "qty_places") int qtyPlaces,
      @JsonKey(name: "reservation_date") String reservationDate,
      @JsonKey(name: "partners") List<String> partners});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? tourId = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? idCard = null,
    Object? qtyPlaces = null,
    Object? reservationDate = null,
    Object? partners = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      idCard: null == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String,
      qtyPlaces: null == qtyPlaces
          ? _value.qtyPlaces
          : qtyPlaces // ignore: cast_nullable_to_non_nullable
              as int,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      partners: null == partners
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "tour_id") String tourId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "id_card") String idCard,
      @JsonKey(name: "qty_places") int qtyPlaces,
      @JsonKey(name: "reservation_date") String reservationDate,
      @JsonKey(name: "partners") List<String> partners});
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? tourId = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? idCard = null,
    Object? qtyPlaces = null,
    Object? reservationDate = null,
    Object? partners = null,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      idCard: null == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String,
      qtyPlaces: null == qtyPlaces
          ? _value.qtyPlaces
          : qtyPlaces // ignore: cast_nullable_to_non_nullable
              as int,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      partners: null == partners
          ? _value._partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "tour_id") required this.tourId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "id_card") required this.idCard,
      @JsonKey(name: "qty_places") required this.qtyPlaces,
      @JsonKey(name: "reservation_date") required this.reservationDate,
      @JsonKey(name: "partners") required final List<String> partners})
      : _partners = partners;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "tour_id")
  final String tourId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "id_card")
  final String idCard;
  @override
  @JsonKey(name: "qty_places")
  final int qtyPlaces;
  @override
  @JsonKey(name: "reservation_date")
  final String reservationDate;
  final List<String> _partners;
  @override
  @JsonKey(name: "partners")
  List<String> get partners {
    if (_partners is EqualUnmodifiableListView) return _partners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partners);
  }

  @override
  String toString() {
    return 'Booking(id: $id, userId: $userId, createdAt: $createdAt, tourId: $tourId, name: $name, lastName: $lastName, phone: $phone, idCard: $idCard, qtyPlaces: $qtyPlaces, reservationDate: $reservationDate, partners: $partners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.idCard, idCard) || other.idCard == idCard) &&
            (identical(other.qtyPlaces, qtyPlaces) ||
                other.qtyPlaces == qtyPlaces) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            const DeepCollectionEquality().equals(other._partners, _partners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      tourId,
      name,
      lastName,
      phone,
      idCard,
      qtyPlaces,
      reservationDate,
      const DeepCollectionEquality().hash(_partners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "user_id") required final String userId,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "tour_id") required final String tourId,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "last_name") required final String lastName,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "id_card") required final String idCard,
      @JsonKey(name: "qty_places") required final int qtyPlaces,
      @JsonKey(name: "reservation_date") required final String reservationDate,
      @JsonKey(name: "partners")
      required final List<String> partners}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "tour_id")
  String get tourId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "id_card")
  String get idCard;
  @override
  @JsonKey(name: "qty_places")
  int get qtyPlaces;
  @override
  @JsonKey(name: "reservation_date")
  String get reservationDate;
  @override
  @JsonKey(name: "partners")
  List<String> get partners;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
