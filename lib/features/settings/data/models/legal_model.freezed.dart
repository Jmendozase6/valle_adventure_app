// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LegalModel _$LegalModelFromJson(Map<String, dynamic> json) {
  return _LegalModel.fromJson(json);
}

/// @nodoc
mixin _$LegalModel {
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalModelCopyWith<LegalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalModelCopyWith<$Res> {
  factory $LegalModelCopyWith(
          LegalModel value, $Res Function(LegalModel) then) =
      _$LegalModelCopyWithImpl<$Res, LegalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "content") String content});
}

/// @nodoc
class _$LegalModelCopyWithImpl<$Res, $Val extends LegalModel>
    implements $LegalModelCopyWith<$Res> {
  _$LegalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegalModelImplCopyWith<$Res>
    implements $LegalModelCopyWith<$Res> {
  factory _$$LegalModelImplCopyWith(
          _$LegalModelImpl value, $Res Function(_$LegalModelImpl) then) =
      __$$LegalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "content") String content});
}

/// @nodoc
class __$$LegalModelImplCopyWithImpl<$Res>
    extends _$LegalModelCopyWithImpl<$Res, _$LegalModelImpl>
    implements _$$LegalModelImplCopyWith<$Res> {
  __$$LegalModelImplCopyWithImpl(
      _$LegalModelImpl _value, $Res Function(_$LegalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$LegalModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegalModelImpl implements _LegalModel {
  const _$LegalModelImpl(
      {@JsonKey(name: "title") required this.title,
      @JsonKey(name: "content") required this.content});

  factory _$LegalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegalModelImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "content")
  final String content;

  @override
  String toString() {
    return 'LegalModel(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegalModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LegalModelImplCopyWith<_$LegalModelImpl> get copyWith =>
      __$$LegalModelImplCopyWithImpl<_$LegalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegalModelImplToJson(
      this,
    );
  }
}

abstract class _LegalModel implements LegalModel {
  const factory _LegalModel(
          {@JsonKey(name: "title") required final String title,
          @JsonKey(name: "content") required final String content}) =
      _$LegalModelImpl;

  factory _LegalModel.fromJson(Map<String, dynamic> json) =
      _$LegalModelImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$LegalModelImplCopyWith<_$LegalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
