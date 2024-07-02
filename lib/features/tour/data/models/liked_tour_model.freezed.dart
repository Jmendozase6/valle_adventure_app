// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_tour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikedTourModel _$LikedTourModelFromJson(Map<String, dynamic> json) {
  return _LikedTourModel.fromJson(json);
}

/// @nodoc
mixin _$LikedTourModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "tour_id")
  TourModel get tourId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  UserModel get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedTourModelCopyWith<LikedTourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedTourModelCopyWith<$Res> {
  factory $LikedTourModelCopyWith(
          LikedTourModel value, $Res Function(LikedTourModel) then) =
      _$LikedTourModelCopyWithImpl<$Res, LikedTourModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "tour_id") TourModel tourId,
      @JsonKey(name: "user_id") UserModel userId,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  $TourModelCopyWith<$Res> get tourId;
  $UserModelCopyWith<$Res> get userId;
}

/// @nodoc
class _$LikedTourModelCopyWithImpl<$Res, $Val extends LikedTourModel>
    implements $LikedTourModelCopyWith<$Res> {
  _$LikedTourModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tourId = null,
    Object? userId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as TourModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserModel,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TourModelCopyWith<$Res> get tourId {
    return $TourModelCopyWith<$Res>(_value.tourId, (value) {
      return _then(_value.copyWith(tourId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userId {
    return $UserModelCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikedTourModelImplCopyWith<$Res>
    implements $LikedTourModelCopyWith<$Res> {
  factory _$$LikedTourModelImplCopyWith(_$LikedTourModelImpl value,
          $Res Function(_$LikedTourModelImpl) then) =
      __$$LikedTourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "tour_id") TourModel tourId,
      @JsonKey(name: "user_id") UserModel userId,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  @override
  $TourModelCopyWith<$Res> get tourId;
  @override
  $UserModelCopyWith<$Res> get userId;
}

/// @nodoc
class __$$LikedTourModelImplCopyWithImpl<$Res>
    extends _$LikedTourModelCopyWithImpl<$Res, _$LikedTourModelImpl>
    implements _$$LikedTourModelImplCopyWith<$Res> {
  __$$LikedTourModelImplCopyWithImpl(
      _$LikedTourModelImpl _value, $Res Function(_$LikedTourModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tourId = null,
    Object? userId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$LikedTourModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as TourModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserModel,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikedTourModelImpl implements _LikedTourModel {
  const _$LikedTourModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "tour_id") required this.tourId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$LikedTourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikedTourModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "tour_id")
  final TourModel tourId;
  @override
  @JsonKey(name: "user_id")
  final UserModel userId;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'LikedTourModel(id: $id, tourId: $tourId, userId: $userId, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedTourModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, tourId, userId, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedTourModelImplCopyWith<_$LikedTourModelImpl> get copyWith =>
      __$$LikedTourModelImplCopyWithImpl<_$LikedTourModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikedTourModelImplToJson(
      this,
    );
  }
}

abstract class _LikedTourModel implements LikedTourModel {
  const factory _LikedTourModel(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "tour_id") required final TourModel tourId,
          @JsonKey(name: "user_id") required final UserModel userId,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt}) =
      _$LikedTourModelImpl;

  factory _LikedTourModel.fromJson(Map<String, dynamic> json) =
      _$LikedTourModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "tour_id")
  TourModel get tourId;
  @override
  @JsonKey(name: "user_id")
  UserModel get userId;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$LikedTourModelImplCopyWith<_$LikedTourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
