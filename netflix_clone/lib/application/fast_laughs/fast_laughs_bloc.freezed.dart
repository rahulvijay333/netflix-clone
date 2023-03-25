// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laughs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughsEventCopyWith<$Res> {
  factory $FastLaughsEventCopyWith(
          FastLaughsEvent value, $Res Function(FastLaughsEvent) then) =
      _$FastLaughsEventCopyWithImpl<$Res, FastLaughsEvent>;
}

/// @nodoc
class _$FastLaughsEventCopyWithImpl<$Res, $Val extends FastLaughsEvent>
    implements $FastLaughsEventCopyWith<$Res> {
  _$FastLaughsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$FastLaughsEventCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FastLaughsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FastLaughsEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LikedCopyWith<$Res> {
  factory _$$LikedCopyWith(_$Liked value, $Res Function(_$Liked) then) =
      __$$LikedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LikedCopyWithImpl<$Res>
    extends _$FastLaughsEventCopyWithImpl<$Res, _$Liked>
    implements _$$LikedCopyWith<$Res> {
  __$$LikedCopyWithImpl(_$Liked _value, $Res Function(_$Liked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Liked(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Liked implements Liked {
  const _$Liked({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaughsEvent.liked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Liked &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedCopyWith<_$Liked> get copyWith =>
      __$$LikedCopyWithImpl<_$Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return liked(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return liked?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class Liked implements FastLaughsEvent {
  const factory Liked({required final int id}) = _$Liked;

  int get id;
  @JsonKey(ignore: true)
  _$$LikedCopyWith<_$Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnlikedCopyWith<$Res> {
  factory _$$UnlikedCopyWith(_$Unliked value, $Res Function(_$Unliked) then) =
      __$$UnlikedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnlikedCopyWithImpl<$Res>
    extends _$FastLaughsEventCopyWithImpl<$Res, _$Unliked>
    implements _$$UnlikedCopyWith<$Res> {
  __$$UnlikedCopyWithImpl(_$Unliked _value, $Res Function(_$Unliked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Unliked(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Unliked implements Unliked {
  const _$Unliked({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaughsEvent.unliked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unliked &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnlikedCopyWith<_$Unliked> get copyWith =>
      __$$UnlikedCopyWithImpl<_$Unliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return unliked(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return unliked?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return unliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class Unliked implements FastLaughsEvent {
  const factory Unliked({required final int id}) = _$Unliked;

  int get id;
  @JsonKey(ignore: true)
  _$$UnlikedCopyWith<_$Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FastLaughsState {
  List<ResponseData> get videoList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughsStateCopyWith<FastLaughsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughsStateCopyWith<$Res> {
  factory $FastLaughsStateCopyWith(
          FastLaughsState value, $Res Function(FastLaughsState) then) =
      _$FastLaughsStateCopyWithImpl<$Res, FastLaughsState>;
  @useResult
  $Res call({List<ResponseData> videoList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaughsStateCopyWithImpl<$Res, $Val extends FastLaughsState>
    implements $FastLaughsStateCopyWith<$Res> {
  _$FastLaughsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FastLaughsStateCopyWith<$Res>
    implements $FastLaughsStateCopyWith<$Res> {
  factory _$$_FastLaughsStateCopyWith(
          _$_FastLaughsState value, $Res Function(_$_FastLaughsState) then) =
      __$$_FastLaughsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseData> videoList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_FastLaughsStateCopyWithImpl<$Res>
    extends _$FastLaughsStateCopyWithImpl<$Res, _$_FastLaughsState>
    implements _$$_FastLaughsStateCopyWith<$Res> {
  __$$_FastLaughsStateCopyWithImpl(
      _$_FastLaughsState _value, $Res Function(_$_FastLaughsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_FastLaughsState(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<ResponseData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FastLaughsState implements _FastLaughsState {
  const _$_FastLaughsState(
      {required final List<ResponseData> videoList,
      required this.isLoading,
      required this.isError})
      : _videoList = videoList;

  final List<ResponseData> _videoList;
  @override
  List<ResponseData> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaughsState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FastLaughsState &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_videoList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FastLaughsStateCopyWith<_$_FastLaughsState> get copyWith =>
      __$$_FastLaughsStateCopyWithImpl<_$_FastLaughsState>(this, _$identity);
}

abstract class _FastLaughsState implements FastLaughsState {
  const factory _FastLaughsState(
      {required final List<ResponseData> videoList,
      required final bool isLoading,
      required final bool isError}) = _$_FastLaughsState;

  @override
  List<ResponseData> get videoList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_FastLaughsStateCopyWith<_$_FastLaughsState> get copyWith =>
      throw _privateConstructorUsedError;
}
