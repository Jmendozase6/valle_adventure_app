// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayloadResponseModel _$PayloadResponseModelFromJson(Map<String, dynamic> json) {
  return _PayloadResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PayloadResponseModel {
  @JsonKey(name: "docs")
  List<TourModel> get docs => throw _privateConstructorUsedError;
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  dynamic get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "nextPage")
  int get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "pagingCounter")
  int get pagingCounter => throw _privateConstructorUsedError;
  @JsonKey(name: "prevPage")
  int get prevPage => throw _privateConstructorUsedError;
  @JsonKey(name: "totalDocs")
  int get totalDocs => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPages")
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadResponseModelCopyWith<PayloadResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadResponseModelCopyWith<$Res> {
  factory $PayloadResponseModelCopyWith(PayloadResponseModel value,
          $Res Function(PayloadResponseModel) then) =
      _$PayloadResponseModelCopyWithImpl<$Res, PayloadResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<TourModel> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") dynamic limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") int prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class _$PayloadResponseModelCopyWithImpl<$Res,
        $Val extends PayloadResponseModel>
    implements $PayloadResponseModelCopyWith<$Res> {
  _$PayloadResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = freezed,
    Object? nextPage = null,
    Object? page = null,
    Object? pagingCounter = null,
    Object? prevPage = null,
    Object? totalDocs = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<TourModel>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as int,
      prevPage: null == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayloadResponseModelImplCopyWith<$Res>
    implements $PayloadResponseModelCopyWith<$Res> {
  factory _$$PayloadResponseModelImplCopyWith(_$PayloadResponseModelImpl value,
          $Res Function(_$PayloadResponseModelImpl) then) =
      __$$PayloadResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<TourModel> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") dynamic limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") int prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class __$$PayloadResponseModelImplCopyWithImpl<$Res>
    extends _$PayloadResponseModelCopyWithImpl<$Res, _$PayloadResponseModelImpl>
    implements _$$PayloadResponseModelImplCopyWith<$Res> {
  __$$PayloadResponseModelImplCopyWithImpl(_$PayloadResponseModelImpl _value,
      $Res Function(_$PayloadResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = freezed,
    Object? nextPage = null,
    Object? page = null,
    Object? pagingCounter = null,
    Object? prevPage = null,
    Object? totalDocs = null,
    Object? totalPages = null,
  }) {
    return _then(_$PayloadResponseModelImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<TourModel>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as int,
      prevPage: null == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadResponseModelImpl implements _PayloadResponseModel {
  const _$PayloadResponseModelImpl(
      {@JsonKey(name: "docs") final List<TourModel> docs = const [],
      @JsonKey(name: "hasNextPage") required this.hasNextPage,
      @JsonKey(name: "hasPrevPage") required this.hasPrevPage,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "nextPage") this.nextPage = -1,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "pagingCounter") required this.pagingCounter,
      @JsonKey(name: "prevPage") this.prevPage = -1,
      @JsonKey(name: "totalDocs") required this.totalDocs,
      @JsonKey(name: "totalPages") required this.totalPages})
      : _docs = docs;

  factory _$PayloadResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadResponseModelImplFromJson(json);

  final List<TourModel> _docs;
  @override
  @JsonKey(name: "docs")
  List<TourModel> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  @JsonKey(name: "hasNextPage")
  final bool hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  final bool hasPrevPage;
  @override
  @JsonKey(name: "limit")
  final dynamic limit;
  @override
  @JsonKey(name: "nextPage")
  final int nextPage;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "pagingCounter")
  final int pagingCounter;
  @override
  @JsonKey(name: "prevPage")
  final int prevPage;
  @override
  @JsonKey(name: "totalDocs")
  final int totalDocs;
  @override
  @JsonKey(name: "totalPages")
  final int totalPages;

  @override
  String toString() {
    return 'PayloadResponseModel(docs: $docs, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage, limit: $limit, nextPage: $nextPage, page: $page, pagingCounter: $pagingCounter, prevPage: $prevPage, totalDocs: $totalDocs, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadResponseModelImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagingCounter, pagingCounter) ||
                other.pagingCounter == pagingCounter) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            (identical(other.totalDocs, totalDocs) ||
                other.totalDocs == totalDocs) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_docs),
      hasNextPage,
      hasPrevPage,
      const DeepCollectionEquality().hash(limit),
      nextPage,
      page,
      pagingCounter,
      prevPage,
      totalDocs,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadResponseModelImplCopyWith<_$PayloadResponseModelImpl>
      get copyWith =>
          __$$PayloadResponseModelImplCopyWithImpl<_$PayloadResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayloadResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PayloadResponseModel implements PayloadResponseModel {
  const factory _PayloadResponseModel(
          {@JsonKey(name: "docs") final List<TourModel> docs,
          @JsonKey(name: "hasNextPage") required final bool hasNextPage,
          @JsonKey(name: "hasPrevPage") required final bool hasPrevPage,
          @JsonKey(name: "limit") required final dynamic limit,
          @JsonKey(name: "nextPage") final int nextPage,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "pagingCounter") required final int pagingCounter,
          @JsonKey(name: "prevPage") final int prevPage,
          @JsonKey(name: "totalDocs") required final int totalDocs,
          @JsonKey(name: "totalPages") required final int totalPages}) =
      _$PayloadResponseModelImpl;

  factory _PayloadResponseModel.fromJson(Map<String, dynamic> json) =
      _$PayloadResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "docs")
  List<TourModel> get docs;
  @override
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage;
  @override
  @JsonKey(name: "limit")
  dynamic get limit;
  @override
  @JsonKey(name: "nextPage")
  int get nextPage;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "pagingCounter")
  int get pagingCounter;
  @override
  @JsonKey(name: "prevPage")
  int get prevPage;
  @override
  @JsonKey(name: "totalDocs")
  int get totalDocs;
  @override
  @JsonKey(name: "totalPages")
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$PayloadResponseModelImplCopyWith<_$PayloadResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TourModel _$TourModelFromJson(Map<String, dynamic> json) {
  return _TourModel.fromJson(json);
}

/// @nodoc
mixin _$TourModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<ImageModel> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "packing")
  String get packing => throw _privateConstructorUsedError;
  @JsonKey(name: "important")
  String get important => throw _privateConstructorUsedError;
  @JsonKey(name: "id_department")
  DepartmentModel get department => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available")
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "included_items")
  String get includedItems => throw _privateConstructorUsedError;
  @JsonKey(name: "not_included_items")
  String get notIncludedItems => throw _privateConstructorUsedError;
  @JsonKey(name: "available_dates")
  List<AvailableDate> get availableDates => throw _privateConstructorUsedError;
  @JsonKey(name: "isLiked")
  bool get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourModelCopyWith<TourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourModelCopyWith<$Res> {
  factory $TourModelCopyWith(TourModel value, $Res Function(TourModel) then) =
      _$TourModelCopyWithImpl<$Res, TourModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<ImageModel> images,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "packing") String packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "id_department") DepartmentModel department,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "included_items") String includedItems,
      @JsonKey(name: "not_included_items") String notIncludedItems,
      @JsonKey(name: "available_dates") List<AvailableDate> availableDates,
      @JsonKey(name: "isLiked") bool isLiked});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class _$TourModelCopyWithImpl<$Res, $Val extends TourModel>
    implements $TourModelCopyWith<$Res> {
  _$TourModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? overview = null,
    Object? images = null,
    Object? price = null,
    Object? packing = null,
    Object? important = null,
    Object? department = null,
    Object? isAvailable = null,
    Object? rating = null,
    Object? includedItems = null,
    Object? notIncludedItems = null,
    Object? availableDates = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      packing: null == packing
          ? _value.packing
          : packing // ignore: cast_nullable_to_non_nullable
              as String,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      includedItems: null == includedItems
          ? _value.includedItems
          : includedItems // ignore: cast_nullable_to_non_nullable
              as String,
      notIncludedItems: null == notIncludedItems
          ? _value.notIncludedItems
          : notIncludedItems // ignore: cast_nullable_to_non_nullable
              as String,
      availableDates: null == availableDates
          ? _value.availableDates
          : availableDates // ignore: cast_nullable_to_non_nullable
              as List<AvailableDate>,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourModelImplCopyWith<$Res>
    implements $TourModelCopyWith<$Res> {
  factory _$$TourModelImplCopyWith(
          _$TourModelImpl value, $Res Function(_$TourModelImpl) then) =
      __$$TourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<ImageModel> images,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "packing") String packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "id_department") DepartmentModel department,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "included_items") String includedItems,
      @JsonKey(name: "not_included_items") String notIncludedItems,
      @JsonKey(name: "available_dates") List<AvailableDate> availableDates,
      @JsonKey(name: "isLiked") bool isLiked});

  @override
  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class __$$TourModelImplCopyWithImpl<$Res>
    extends _$TourModelCopyWithImpl<$Res, _$TourModelImpl>
    implements _$$TourModelImplCopyWith<$Res> {
  __$$TourModelImplCopyWithImpl(
      _$TourModelImpl _value, $Res Function(_$TourModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? overview = null,
    Object? images = null,
    Object? price = null,
    Object? packing = null,
    Object? important = null,
    Object? department = null,
    Object? isAvailable = null,
    Object? rating = null,
    Object? includedItems = null,
    Object? notIncludedItems = null,
    Object? availableDates = null,
    Object? isLiked = null,
  }) {
    return _then(_$TourModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      packing: null == packing
          ? _value.packing
          : packing // ignore: cast_nullable_to_non_nullable
              as String,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      includedItems: null == includedItems
          ? _value.includedItems
          : includedItems // ignore: cast_nullable_to_non_nullable
              as String,
      notIncludedItems: null == notIncludedItems
          ? _value.notIncludedItems
          : notIncludedItems // ignore: cast_nullable_to_non_nullable
              as String,
      availableDates: null == availableDates
          ? _value._availableDates
          : availableDates // ignore: cast_nullable_to_non_nullable
              as List<AvailableDate>,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourModelImpl implements _TourModel {
  const _$TourModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "images") required final List<ImageModel> images,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "packing") this.packing = '',
      @JsonKey(name: "important") this.important = '',
      @JsonKey(name: "id_department") required this.department,
      @JsonKey(name: "is_available") required this.isAvailable,
      @JsonKey(name: "rating") this.rating = '0',
      @JsonKey(name: "included_items") this.includedItems = '',
      @JsonKey(name: "not_included_items") this.notIncludedItems = '',
      @JsonKey(name: "available_dates")
      required final List<AvailableDate> availableDates,
      @JsonKey(name: "isLiked") this.isLiked = false})
      : _images = images,
        _availableDates = availableDates;

  factory _$TourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "overview")
  final String overview;
  final List<ImageModel> _images;
  @override
  @JsonKey(name: "images")
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "packing")
  final String packing;
  @override
  @JsonKey(name: "important")
  final String important;
  @override
  @JsonKey(name: "id_department")
  final DepartmentModel department;
  @override
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @override
  @JsonKey(name: "rating")
  final String rating;
  @override
  @JsonKey(name: "included_items")
  final String includedItems;
  @override
  @JsonKey(name: "not_included_items")
  final String notIncludedItems;
  final List<AvailableDate> _availableDates;
  @override
  @JsonKey(name: "available_dates")
  List<AvailableDate> get availableDates {
    if (_availableDates is EqualUnmodifiableListView) return _availableDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDates);
  }

  @override
  @JsonKey(name: "isLiked")
  final bool isLiked;

  @override
  String toString() {
    return 'TourModel(id: $id, name: $name, overview: $overview, images: $images, price: $price, packing: $packing, important: $important, department: $department, isAvailable: $isAvailable, rating: $rating, includedItems: $includedItems, notIncludedItems: $notIncludedItems, availableDates: $availableDates, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.includedItems, includedItems) ||
                other.includedItems == includedItems) &&
            (identical(other.notIncludedItems, notIncludedItems) ||
                other.notIncludedItems == notIncludedItems) &&
            const DeepCollectionEquality()
                .equals(other._availableDates, _availableDates) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      overview,
      const DeepCollectionEquality().hash(_images),
      price,
      packing,
      important,
      department,
      isAvailable,
      rating,
      includedItems,
      notIncludedItems,
      const DeepCollectionEquality().hash(_availableDates),
      isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourModelImplCopyWith<_$TourModelImpl> get copyWith =>
      __$$TourModelImplCopyWithImpl<_$TourModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourModelImplToJson(
      this,
    );
  }
}

abstract class _TourModel implements TourModel {
  const factory _TourModel(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "overview") required final String overview,
      @JsonKey(name: "images") required final List<ImageModel> images,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "packing") final String packing,
      @JsonKey(name: "important") final String important,
      @JsonKey(name: "id_department") required final DepartmentModel department,
      @JsonKey(name: "is_available") required final bool isAvailable,
      @JsonKey(name: "rating") final String rating,
      @JsonKey(name: "included_items") final String includedItems,
      @JsonKey(name: "not_included_items") final String notIncludedItems,
      @JsonKey(name: "available_dates")
      required final List<AvailableDate> availableDates,
      @JsonKey(name: "isLiked") final bool isLiked}) = _$TourModelImpl;

  factory _TourModel.fromJson(Map<String, dynamic> json) =
      _$TourModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "images")
  List<ImageModel> get images;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "packing")
  String get packing;
  @override
  @JsonKey(name: "important")
  String get important;
  @override
  @JsonKey(name: "id_department")
  DepartmentModel get department;
  @override
  @JsonKey(name: "is_available")
  bool get isAvailable;
  @override
  @JsonKey(name: "rating")
  String get rating;
  @override
  @JsonKey(name: "included_items")
  String get includedItems;
  @override
  @JsonKey(name: "not_included_items")
  String get notIncludedItems;
  @override
  @JsonKey(name: "available_dates")
  List<AvailableDate> get availableDates;
  @override
  @JsonKey(name: "isLiked")
  bool get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$TourModelImplCopyWith<_$TourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableDate _$AvailableDateFromJson(Map<String, dynamic> json) {
  return _AvailableDate.fromJson(json);
}

/// @nodoc
mixin _$AvailableDate {
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableDateCopyWith<AvailableDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDateCopyWith<$Res> {
  factory $AvailableDateCopyWith(
          AvailableDate value, $Res Function(AvailableDate) then) =
      _$AvailableDateCopyWithImpl<$Res, AvailableDate>;
  @useResult
  $Res call({@JsonKey(name: "date") DateTime date});
}

/// @nodoc
class _$AvailableDateCopyWithImpl<$Res, $Val extends AvailableDate>
    implements $AvailableDateCopyWith<$Res> {
  _$AvailableDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableDateImplCopyWith<$Res>
    implements $AvailableDateCopyWith<$Res> {
  factory _$$AvailableDateImplCopyWith(
          _$AvailableDateImpl value, $Res Function(_$AvailableDateImpl) then) =
      __$$AvailableDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "date") DateTime date});
}

/// @nodoc
class __$$AvailableDateImplCopyWithImpl<$Res>
    extends _$AvailableDateCopyWithImpl<$Res, _$AvailableDateImpl>
    implements _$$AvailableDateImplCopyWith<$Res> {
  __$$AvailableDateImplCopyWithImpl(
      _$AvailableDateImpl _value, $Res Function(_$AvailableDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$AvailableDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableDateImpl implements _AvailableDate {
  const _$AvailableDateImpl({@JsonKey(name: "date") required this.date});

  factory _$AvailableDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableDateImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final DateTime date;

  @override
  String toString() {
    return 'AvailableDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableDateImplCopyWith<_$AvailableDateImpl> get copyWith =>
      __$$AvailableDateImplCopyWithImpl<_$AvailableDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableDateImplToJson(
      this,
    );
  }
}

abstract class _AvailableDate implements AvailableDate {
  const factory _AvailableDate(
          {@JsonKey(name: "date") required final DateTime date}) =
      _$AvailableDateImpl;

  factory _AvailableDate.fromJson(Map<String, dynamic> json) =
      _$AvailableDateImpl.fromJson;

  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$AvailableDateImplCopyWith<_$AvailableDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: "src")
  Src get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({@JsonKey(name: "src") Src src});

  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SrcCopyWith<$Res> get src {
    return $SrcCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "src") Src src});

  @override
  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
  }) {
    return _then(_$ImageModelImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl({@JsonKey(name: "src") required this.src});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  @JsonKey(name: "src")
  final Src src;

  @override
  String toString() {
    return 'ImageModel(src: $src)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel({@JsonKey(name: "src") required final Src src}) =
      _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  @JsonKey(name: "src")
  Src get src;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
mixin _$Src {
  @JsonKey(name: "cloudinary")
  Cloudinary get cloudinary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res, Src>;
  @useResult
  $Res call({@JsonKey(name: "cloudinary") Cloudinary cloudinary});

  $CloudinaryCopyWith<$Res> get cloudinary;
}

/// @nodoc
class _$SrcCopyWithImpl<$Res, $Val extends Src> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cloudinary = null,
  }) {
    return _then(_value.copyWith(
      cloudinary: null == cloudinary
          ? _value.cloudinary
          : cloudinary // ignore: cast_nullable_to_non_nullable
              as Cloudinary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudinaryCopyWith<$Res> get cloudinary {
    return $CloudinaryCopyWith<$Res>(_value.cloudinary, (value) {
      return _then(_value.copyWith(cloudinary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SrcImplCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$$SrcImplCopyWith(_$SrcImpl value, $Res Function(_$SrcImpl) then) =
      __$$SrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "cloudinary") Cloudinary cloudinary});

  @override
  $CloudinaryCopyWith<$Res> get cloudinary;
}

/// @nodoc
class __$$SrcImplCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res, _$SrcImpl>
    implements _$$SrcImplCopyWith<$Res> {
  __$$SrcImplCopyWithImpl(_$SrcImpl _value, $Res Function(_$SrcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cloudinary = null,
  }) {
    return _then(_$SrcImpl(
      cloudinary: null == cloudinary
          ? _value.cloudinary
          : cloudinary // ignore: cast_nullable_to_non_nullable
              as Cloudinary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SrcImpl implements _Src {
  const _$SrcImpl({@JsonKey(name: "cloudinary") required this.cloudinary});

  factory _$SrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrcImplFromJson(json);

  @override
  @JsonKey(name: "cloudinary")
  final Cloudinary cloudinary;

  @override
  String toString() {
    return 'Src(cloudinary: $cloudinary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SrcImpl &&
            (identical(other.cloudinary, cloudinary) ||
                other.cloudinary == cloudinary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cloudinary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SrcImplCopyWith<_$SrcImpl> get copyWith =>
      __$$SrcImplCopyWithImpl<_$SrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SrcImplToJson(
      this,
    );
  }
}

abstract class _Src implements Src {
  const factory _Src(
          {@JsonKey(name: "cloudinary") required final Cloudinary cloudinary}) =
      _$SrcImpl;

  factory _Src.fromJson(Map<String, dynamic> json) = _$SrcImpl.fromJson;

  @override
  @JsonKey(name: "cloudinary")
  Cloudinary get cloudinary;
  @override
  @JsonKey(ignore: true)
  _$$SrcImplCopyWith<_$SrcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cloudinary _$CloudinaryFromJson(Map<String, dynamic> json) {
  return _Cloudinary.fromJson(json);
}

/// @nodoc
mixin _$Cloudinary {
  @JsonKey(name: "secure_url")
  String get secureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudinaryCopyWith<Cloudinary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudinaryCopyWith<$Res> {
  factory $CloudinaryCopyWith(
          Cloudinary value, $Res Function(Cloudinary) then) =
      _$CloudinaryCopyWithImpl<$Res, Cloudinary>;
  @useResult
  $Res call({@JsonKey(name: "secure_url") String secureUrl});
}

/// @nodoc
class _$CloudinaryCopyWithImpl<$Res, $Val extends Cloudinary>
    implements $CloudinaryCopyWith<$Res> {
  _$CloudinaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secureUrl = null,
  }) {
    return _then(_value.copyWith(
      secureUrl: null == secureUrl
          ? _value.secureUrl
          : secureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudinaryImplCopyWith<$Res>
    implements $CloudinaryCopyWith<$Res> {
  factory _$$CloudinaryImplCopyWith(
          _$CloudinaryImpl value, $Res Function(_$CloudinaryImpl) then) =
      __$$CloudinaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "secure_url") String secureUrl});
}

/// @nodoc
class __$$CloudinaryImplCopyWithImpl<$Res>
    extends _$CloudinaryCopyWithImpl<$Res, _$CloudinaryImpl>
    implements _$$CloudinaryImplCopyWith<$Res> {
  __$$CloudinaryImplCopyWithImpl(
      _$CloudinaryImpl _value, $Res Function(_$CloudinaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secureUrl = null,
  }) {
    return _then(_$CloudinaryImpl(
      secureUrl: null == secureUrl
          ? _value.secureUrl
          : secureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudinaryImpl implements _Cloudinary {
  const _$CloudinaryImpl(
      {@JsonKey(name: "secure_url") required this.secureUrl});

  factory _$CloudinaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudinaryImplFromJson(json);

  @override
  @JsonKey(name: "secure_url")
  final String secureUrl;

  @override
  String toString() {
    return 'Cloudinary(secureUrl: $secureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudinaryImpl &&
            (identical(other.secureUrl, secureUrl) ||
                other.secureUrl == secureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, secureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudinaryImplCopyWith<_$CloudinaryImpl> get copyWith =>
      __$$CloudinaryImplCopyWithImpl<_$CloudinaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudinaryImplToJson(
      this,
    );
  }
}

abstract class _Cloudinary implements Cloudinary {
  const factory _Cloudinary(
          {@JsonKey(name: "secure_url") required final String secureUrl}) =
      _$CloudinaryImpl;

  factory _Cloudinary.fromJson(Map<String, dynamic> json) =
      _$CloudinaryImpl.fromJson;

  @override
  @JsonKey(name: "secure_url")
  String get secureUrl;
  @override
  @JsonKey(ignore: true)
  _$$CloudinaryImplCopyWith<_$CloudinaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
