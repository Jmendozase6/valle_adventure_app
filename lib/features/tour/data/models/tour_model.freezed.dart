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

TourModel _$TourModelFromJson(Map<String, dynamic> json) {
  return _TourModel.fromJson(json);
}

/// @nodoc
mixin _$TourModel {
  @JsonKey(name: "docs")
  List<TourDoc> get docs => throw _privateConstructorUsedError;
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
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
  $TourModelCopyWith<TourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourModelCopyWith<$Res> {
  factory $TourModelCopyWith(TourModel value, $Res Function(TourModel) then) =
      _$TourModelCopyWithImpl<$Res, TourModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<TourDoc> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") int prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
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
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = null,
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
              as List<TourDoc>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$TourModelImplCopyWith<$Res>
    implements $TourModelCopyWith<$Res> {
  factory _$$TourModelImplCopyWith(
          _$TourModelImpl value, $Res Function(_$TourModelImpl) then) =
      __$$TourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<TourDoc> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") int prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
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
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = null,
    Object? nextPage = null,
    Object? page = null,
    Object? pagingCounter = null,
    Object? prevPage = null,
    Object? totalDocs = null,
    Object? totalPages = null,
  }) {
    return _then(_$TourModelImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<TourDoc>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$TourModelImpl implements _TourModel {
  const _$TourModelImpl(
      {@JsonKey(name: "docs") final List<TourDoc> docs = const [],
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

  factory _$TourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourModelImplFromJson(json);

  final List<TourDoc> _docs;
  @override
  @JsonKey(name: "docs")
  List<TourDoc> get docs {
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
  final int limit;
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
    return 'TourModel(docs: $docs, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage, limit: $limit, nextPage: $nextPage, page: $page, pagingCounter: $pagingCounter, prevPage: $prevPage, totalDocs: $totalDocs, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourModelImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
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
      limit,
      nextPage,
      page,
      pagingCounter,
      prevPage,
      totalDocs,
      totalPages);

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
          {@JsonKey(name: "docs") final List<TourDoc> docs,
          @JsonKey(name: "hasNextPage") required final bool hasNextPage,
          @JsonKey(name: "hasPrevPage") required final bool hasPrevPage,
          @JsonKey(name: "limit") required final int limit,
          @JsonKey(name: "nextPage") final int nextPage,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "pagingCounter") required final int pagingCounter,
          @JsonKey(name: "prevPage") final int prevPage,
          @JsonKey(name: "totalDocs") required final int totalDocs,
          @JsonKey(name: "totalPages") required final int totalPages}) =
      _$TourModelImpl;

  factory _TourModel.fromJson(Map<String, dynamic> json) =
      _$TourModelImpl.fromJson;

  @override
  @JsonKey(name: "docs")
  List<TourDoc> get docs;
  @override
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage;
  @override
  @JsonKey(name: "limit")
  int get limit;
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
  _$$TourModelImplCopyWith<_$TourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourDoc _$TourDocFromJson(Map<String, dynamic> json) {
  return _TourDoc.fromJson(json);
}

/// @nodoc
mixin _$TourDoc {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "packing")
  String get packing => throw _privateConstructorUsedError;
  @JsonKey(name: "important")
  String get important => throw _privateConstructorUsedError;
  @JsonKey(name: "id_department")
  IdDepartment get department => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourDocCopyWith<TourDoc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourDocCopyWith<$Res> {
  factory $TourDocCopyWith(TourDoc value, $Res Function(TourDoc) then) =
      _$TourDocCopyWithImpl<$Res, TourDoc>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "packing") String packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "id_department") IdDepartment department,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "included_items") String includedItems,
      @JsonKey(name: "not_included_items") String notIncludedItems,
      @JsonKey(name: "available_dates") List<AvailableDate> availableDates});

  $IdDepartmentCopyWith<$Res> get department;
}

/// @nodoc
class _$TourDocCopyWithImpl<$Res, $Val extends TourDoc>
    implements $TourDocCopyWith<$Res> {
  _$TourDocCopyWithImpl(this._value, this._then);

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
              as List<Image>,
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
              as IdDepartment,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdDepartmentCopyWith<$Res> get department {
    return $IdDepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourDocImplCopyWith<$Res> implements $TourDocCopyWith<$Res> {
  factory _$$TourDocImplCopyWith(
          _$TourDocImpl value, $Res Function(_$TourDocImpl) then) =
      __$$TourDocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "packing") String packing,
      @JsonKey(name: "important") String important,
      @JsonKey(name: "id_department") IdDepartment department,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "included_items") String includedItems,
      @JsonKey(name: "not_included_items") String notIncludedItems,
      @JsonKey(name: "available_dates") List<AvailableDate> availableDates});

  @override
  $IdDepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$TourDocImplCopyWithImpl<$Res>
    extends _$TourDocCopyWithImpl<$Res, _$TourDocImpl>
    implements _$$TourDocImplCopyWith<$Res> {
  __$$TourDocImplCopyWithImpl(
      _$TourDocImpl _value, $Res Function(_$TourDocImpl) _then)
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
  }) {
    return _then(_$TourDocImpl(
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
              as List<Image>,
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
              as IdDepartment,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourDocImpl implements _TourDoc {
  const _$TourDocImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "packing") this.packing = '',
      @JsonKey(name: "important") this.important = '',
      @JsonKey(name: "id_department") required this.department,
      @JsonKey(name: "is_available") required this.isAvailable,
      @JsonKey(name: "rating") this.rating = '',
      @JsonKey(name: "included_items") this.includedItems = '',
      @JsonKey(name: "not_included_items") this.notIncludedItems = '',
      @JsonKey(name: "available_dates")
      required final List<AvailableDate> availableDates})
      : _images = images,
        _availableDates = availableDates;

  factory _$TourDocImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourDocImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "overview")
  final String overview;
  final List<Image> _images;
  @override
  @JsonKey(name: "images")
  List<Image> get images {
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
  final IdDepartment department;
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
  String toString() {
    return 'TourDoc(id: $id, name: $name, overview: $overview, images: $images, price: $price, packing: $packing, important: $important, department: $department, isAvailable: $isAvailable, rating: $rating, includedItems: $includedItems, notIncludedItems: $notIncludedItems, availableDates: $availableDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourDocImpl &&
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
                .equals(other._availableDates, _availableDates));
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
      const DeepCollectionEquality().hash(_availableDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourDocImplCopyWith<_$TourDocImpl> get copyWith =>
      __$$TourDocImplCopyWithImpl<_$TourDocImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourDocImplToJson(
      this,
    );
  }
}

abstract class _TourDoc implements TourDoc {
  const factory _TourDoc(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "overview") required final String overview,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "packing") final String packing,
      @JsonKey(name: "important") final String important,
      @JsonKey(name: "id_department") required final IdDepartment department,
      @JsonKey(name: "is_available") required final bool isAvailable,
      @JsonKey(name: "rating") final String rating,
      @JsonKey(name: "included_items") final String includedItems,
      @JsonKey(name: "not_included_items") final String notIncludedItems,
      @JsonKey(name: "available_dates")
      required final List<AvailableDate> availableDates}) = _$TourDocImpl;

  factory _TourDoc.fromJson(Map<String, dynamic> json) = _$TourDocImpl.fromJson;

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
  List<Image> get images;
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
  IdDepartment get department;
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
  @JsonKey(ignore: true)
  _$$TourDocImplCopyWith<_$TourDocImpl> get copyWith =>
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

IdDepartment _$IdDepartmentFromJson(Map<String, dynamic> json) {
  return _IdDepartment.fromJson(json);
}

/// @nodoc
mixin _$IdDepartment {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdDepartmentCopyWith<IdDepartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdDepartmentCopyWith<$Res> {
  factory $IdDepartmentCopyWith(
          IdDepartment value, $Res Function(IdDepartment) then) =
      _$IdDepartmentCopyWithImpl<$Res, IdDepartment>;
  @useResult
  $Res call({@JsonKey(name: "name") String name});
}

/// @nodoc
class _$IdDepartmentCopyWithImpl<$Res, $Val extends IdDepartment>
    implements $IdDepartmentCopyWith<$Res> {
  _$IdDepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdDepartmentImplCopyWith<$Res>
    implements $IdDepartmentCopyWith<$Res> {
  factory _$$IdDepartmentImplCopyWith(
          _$IdDepartmentImpl value, $Res Function(_$IdDepartmentImpl) then) =
      __$$IdDepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String name});
}

/// @nodoc
class __$$IdDepartmentImplCopyWithImpl<$Res>
    extends _$IdDepartmentCopyWithImpl<$Res, _$IdDepartmentImpl>
    implements _$$IdDepartmentImplCopyWith<$Res> {
  __$$IdDepartmentImplCopyWithImpl(
      _$IdDepartmentImpl _value, $Res Function(_$IdDepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$IdDepartmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdDepartmentImpl implements _IdDepartment {
  const _$IdDepartmentImpl({@JsonKey(name: "name") required this.name});

  factory _$IdDepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdDepartmentImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'IdDepartment(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdDepartmentImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdDepartmentImplCopyWith<_$IdDepartmentImpl> get copyWith =>
      __$$IdDepartmentImplCopyWithImpl<_$IdDepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdDepartmentImplToJson(
      this,
    );
  }
}

abstract class _IdDepartment implements IdDepartment {
  const factory _IdDepartment(
      {@JsonKey(name: "name") required final String name}) = _$IdDepartmentImpl;

  factory _IdDepartment.fromJson(Map<String, dynamic> json) =
      _$IdDepartmentImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$IdDepartmentImplCopyWith<_$IdDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "src")
  Src get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@JsonKey(name: "src") Src src});

  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

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
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "src") Src src});

  @override
  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
  }) {
    return _then(_$ImageImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl({@JsonKey(name: "src") required this.src});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "src")
  final Src src;

  @override
  String toString() {
    return 'Image(src: $src)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({@JsonKey(name: "src") required final Src src}) =
      _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "src")
  Src get src;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
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
