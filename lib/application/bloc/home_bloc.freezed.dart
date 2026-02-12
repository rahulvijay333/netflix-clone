// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataCopyWith<$Res> {
  factory _$$GetHomeScreenDataCopyWith(
          _$GetHomeScreenData value, $Res Function(_$GetHomeScreenData) then) =
      __$$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeScreenData>
    implements _$$GetHomeScreenDataCopyWith<$Res> {
  __$$GetHomeScreenDataCopyWithImpl(
      _$GetHomeScreenData _value, $Res Function(_$GetHomeScreenData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
mixin _$HomeState {
  String get id => throw _privateConstructorUsedError;
  List<ResponseData> get pastYearMovieList =>
      throw _privateConstructorUsedError;
  List<UpcomingData> get trendingNowList => throw _privateConstructorUsedError;
  List<UpcomingData> get tenseDramasList => throw _privateConstructorUsedError;
  List<ResponseData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  List<UpcomingData> get top10TvShowsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String id,
      List<ResponseData> pastYearMovieList,
      List<UpcomingData> trendingNowList,
      List<UpcomingData> tenseDramasList,
      List<ResponseData> southIndianMovieList,
      List<UpcomingData> top10TvShowsList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pastYearMovieList = null,
    Object? trendingNowList = null,
    Object? tenseDramasList = null,
    Object? southIndianMovieList = null,
    Object? top10TvShowsList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      trendingNowList: null == trendingNowList
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      tenseDramasList: null == tenseDramasList
          ? _value.tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      southIndianMovieList: null == southIndianMovieList
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      top10TvShowsList: null == top10TvShowsList
          ? _value.top10TvShowsList
          : top10TvShowsList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<ResponseData> pastYearMovieList,
      List<UpcomingData> trendingNowList,
      List<UpcomingData> tenseDramasList,
      List<ResponseData> southIndianMovieList,
      List<UpcomingData> top10TvShowsList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pastYearMovieList = null,
    Object? trendingNowList = null,
    Object? tenseDramasList = null,
    Object? southIndianMovieList = null,
    Object? top10TvShowsList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_HomeState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value._pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      trendingNowList: null == trendingNowList
          ? _value._trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      tenseDramasList: null == tenseDramasList
          ? _value._tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      southIndianMovieList: null == southIndianMovieList
          ? _value._southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      top10TvShowsList: null == top10TvShowsList
          ? _value._top10TvShowsList
          : top10TvShowsList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.id,
      required final List<ResponseData> pastYearMovieList,
      required final List<UpcomingData> trendingNowList,
      required final List<UpcomingData> tenseDramasList,
      required final List<ResponseData> southIndianMovieList,
      required final List<UpcomingData> top10TvShowsList,
      required this.isLoading,
      required this.hasError})
      : _pastYearMovieList = pastYearMovieList,
        _trendingNowList = trendingNowList,
        _tenseDramasList = tenseDramasList,
        _southIndianMovieList = southIndianMovieList,
        _top10TvShowsList = top10TvShowsList;

  @override
  final String id;
  final List<ResponseData> _pastYearMovieList;
  @override
  List<ResponseData> get pastYearMovieList {
    if (_pastYearMovieList is EqualUnmodifiableListView)
      return _pastYearMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearMovieList);
  }

  final List<UpcomingData> _trendingNowList;
  @override
  List<UpcomingData> get trendingNowList {
    if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<UpcomingData> _tenseDramasList;
  @override
  List<UpcomingData> get tenseDramasList {
    if (_tenseDramasList is EqualUnmodifiableListView) return _tenseDramasList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramasList);
  }

  final List<ResponseData> _southIndianMovieList;
  @override
  List<ResponseData> get southIndianMovieList {
    if (_southIndianMovieList is EqualUnmodifiableListView)
      return _southIndianMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianMovieList);
  }

  final List<UpcomingData> _top10TvShowsList;
  @override
  List<UpcomingData> get top10TvShowsList {
    if (_top10TvShowsList is EqualUnmodifiableListView)
      return _top10TvShowsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10TvShowsList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(id: $id, pastYearMovieList: $pastYearMovieList, trendingNowList: $trendingNowList, tenseDramasList: $tenseDramasList, southIndianMovieList: $southIndianMovieList, top10TvShowsList: $top10TvShowsList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._pastYearMovieList, _pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowList, _trendingNowList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramasList, _tenseDramasList) &&
            const DeepCollectionEquality()
                .equals(other._southIndianMovieList, _southIndianMovieList) &&
            const DeepCollectionEquality()
                .equals(other._top10TvShowsList, _top10TvShowsList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_pastYearMovieList),
      const DeepCollectionEquality().hash(_trendingNowList),
      const DeepCollectionEquality().hash(_tenseDramasList),
      const DeepCollectionEquality().hash(_southIndianMovieList),
      const DeepCollectionEquality().hash(_top10TvShowsList),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final String id,
      required final List<ResponseData> pastYearMovieList,
      required final List<UpcomingData> trendingNowList,
      required final List<UpcomingData> tenseDramasList,
      required final List<ResponseData> southIndianMovieList,
      required final List<UpcomingData> top10TvShowsList,
      required final bool isLoading,
      required final bool hasError}) = _$_HomeState;

  @override
  String get id;
  @override
  List<ResponseData> get pastYearMovieList;
  @override
  List<UpcomingData> get trendingNowList;
  @override
  List<UpcomingData> get tenseDramasList;
  @override
  List<ResponseData> get southIndianMovieList;
  @override
  List<UpcomingData> get top10TvShowsList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
