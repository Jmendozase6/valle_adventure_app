// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
mixin _$Tour {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "packing")
  String? get packing => throw _privateConstructorUsedError;
  @JsonKey(name: "important")
  String get important => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String get department => throw _privateConstructorUsedError;
  @JsonKey(name: "included_items")
  List<String>? get includedItems => throw _privateConstructorUsedError;
  @JsonKey(name: "not_included_items")
  List<String>? get notIncludedItems => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available")
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "is_liked")
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res, Tour>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "packing") String? packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "department") String department,
      @JsonKey(name: "included_items") List<String>? includedItems,
      @JsonKey(name: "not_included_items") List<String>? notIncludedItems,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "is_liked") bool? isLiked});
}

/// @nodoc
class _$TourCopyWithImpl<$Res, $Val extends Tour>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? overview = null,
    Object? images = freezed,
    Object? price = null,
    Object? packing = freezed,
    Object? important = null,
    Object? department = null,
    Object? includedItems = freezed,
    Object? notIncludedItems = freezed,
    Object? isAvailable = null,
    Object? rating = null,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      packing: freezed == packing
          ? _value.packing
          : packing // ignore: cast_nullable_to_non_nullable
              as String?,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      includedItems: freezed == includedItems
          ? _value.includedItems
          : includedItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notIncludedItems: freezed == notIncludedItems
          ? _value.notIncludedItems
          : notIncludedItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourImplCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$$TourImplCopyWith(
          _$TourImpl value, $Res Function(_$TourImpl) then) =
      __$$TourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "packing") String? packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "department") String department,
      @JsonKey(name: "included_items") List<String>? includedItems,
      @JsonKey(name: "not_included_items") List<String>? notIncludedItems,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "is_liked") bool? isLiked});
}

/// @nodoc
class __$$TourImplCopyWithImpl<$Res>
    extends _$TourCopyWithImpl<$Res, _$TourImpl>
    implements _$$TourImplCopyWith<$Res> {
  __$$TourImplCopyWithImpl(_$TourImpl _value, $Res Function(_$TourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? overview = null,
    Object? images = freezed,
    Object? price = null,
    Object? packing = freezed,
    Object? important = null,
    Object? department = null,
    Object? includedItems = freezed,
    Object? notIncludedItems = freezed,
    Object? isAvailable = null,
    Object? rating = null,
    Object? isLiked = freezed,
  }) {
    return _then(_$TourImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      packing: freezed == packing
          ? _value.packing
          : packing // ignore: cast_nullable_to_non_nullable
              as String?,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      includedItems: freezed == includedItems
          ? _value._includedItems
          : includedItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notIncludedItems: freezed == notIncludedItems
          ? _value._notIncludedItems
          : notIncludedItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImpl implements _Tour {
  const _$TourImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "images") final List<String>? images = const [],
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "packing") this.packing = '',
      @JsonKey(name: "important") this.important = '',
      @JsonKey(name: "department") required this.department,
      @JsonKey(name: "included_items")
      final List<String>? includedItems = const [],
      @JsonKey(name: "not_included_items")
      final List<String>? notIncludedItems = const [],
      @JsonKey(name: "is_available") required this.isAvailable,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "is_liked") this.isLiked = false})
      : _images = images,
        _includedItems = includedItems,
        _notIncludedItems = notIncludedItems;

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "overview")
  final String overview;
  final List<String>? _images;
  @override
  @JsonKey(name: "images")
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "packing")
  final String? packing;
  @override
  @JsonKey(name: "important")
  final String important;
  @override
  @JsonKey(name: "department")
  final String department;
  final List<String>? _includedItems;
  @override
  @JsonKey(name: "included_items")
  List<String>? get includedItems {
    final value = _includedItems;
    if (value == null) return null;
    if (_includedItems is EqualUnmodifiableListView) return _includedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notIncludedItems;
  @override
  @JsonKey(name: "not_included_items")
  List<String>? get notIncludedItems {
    final value = _notIncludedItems;
    if (value == null) return null;
    if (_notIncludedItems is EqualUnmodifiableListView)
      return _notIncludedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @override
  @JsonKey(name: "rating")
  final double rating;
  @override
  @JsonKey(name: "is_liked")
  final bool? isLiked;

  @override
  String toString() {
    return 'Tour(id: $id, createdAt: $createdAt, name: $name, overview: $overview, images: $images, price: $price, packing: $packing, important: $important, department: $department, includedItems: $includedItems, notIncludedItems: $notIncludedItems, isAvailable: $isAvailable, rating: $rating, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.packing, packing) || other.packing == packing) &&
            (identical(other.important, important) ||
                other.important == important) &&
            (identical(other.department, department) ||
                other.department == department) &&
            const DeepCollectionEquality()
                .equals(other._includedItems, _includedItems) &&
            const DeepCollectionEquality()
                .equals(other._notIncludedItems, _notIncludedItems) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      name,
      overview,
      const DeepCollectionEquality().hash(_images),
      price,
      packing,
      important,
      department,
      const DeepCollectionEquality().hash(_includedItems),
      const DeepCollectionEquality().hash(_notIncludedItems),
      isAvailable,
      rating,
      isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      __$$TourImplCopyWithImpl<_$TourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImplToJson(
      this,
    );
  }
}

abstract class _Tour implements Tour {
  const factory _Tour(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "overview") required final String overview,
      @JsonKey(name: "images") final List<String>? images,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "packing") final String? packing,
      @JsonKey(name: "important") final String important,
      @JsonKey(name: "department") required final String department,
      @JsonKey(name: "included_items") final List<String>? includedItems,
      @JsonKey(name: "not_included_items") final List<String>? notIncludedItems,
      @JsonKey(name: "is_available") required final bool isAvailable,
      @JsonKey(name: "rating") required final double rating,
      @JsonKey(name: "is_liked") final bool? isLiked}) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "images")
  List<String>? get images;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "packing")
  String? get packing;
  @override
  @JsonKey(name: "important")
  String get important;
  @override
  @JsonKey(name: "department")
  String get department;
  @override
  @JsonKey(name: "included_items")
  List<String>? get includedItems;
  @override
  @JsonKey(name: "not_included_items")
  List<String>? get notIncludedItems;
  @override
  @JsonKey(name: "is_available")
  bool get isAvailable;
  @override
  @JsonKey(name: "rating")
  double get rating;
  @override
  @JsonKey(name: "is_liked")
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
