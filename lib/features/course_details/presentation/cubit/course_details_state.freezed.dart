// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CourseDetails courseDetails)
        courseDetailedFetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(courseDetailedFetched value)
        courseDetailedFetched,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  final CourseDetailsState _value;
  // ignore: unused_field
  final $Res Function(CourseDetailsState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CourseDetailsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(CourseDetails courseDetails)
        courseDetailedFetched,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(courseDetailedFetched value)
        courseDetailedFetched,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CourseDetailsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CourseDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CourseDetails courseDetails)
        courseDetailedFetched,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(courseDetailedFetched value)
        courseDetailedFetched,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CourseDetailsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$courseDetailedFetchedCopyWith<$Res> {
  factory _$$courseDetailedFetchedCopyWith(_$courseDetailedFetched value,
          $Res Function(_$courseDetailedFetched) then) =
      __$$courseDetailedFetchedCopyWithImpl<$Res>;
  $Res call({CourseDetails courseDetails});
}

/// @nodoc
class __$$courseDetailedFetchedCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res>
    implements _$$courseDetailedFetchedCopyWith<$Res> {
  __$$courseDetailedFetchedCopyWithImpl(_$courseDetailedFetched _value,
      $Res Function(_$courseDetailedFetched) _then)
      : super(_value, (v) => _then(v as _$courseDetailedFetched));

  @override
  _$courseDetailedFetched get _value => super._value as _$courseDetailedFetched;

  @override
  $Res call({
    Object? courseDetails = freezed,
  }) {
    return _then(_$courseDetailedFetched(
      courseDetails: courseDetails == freezed
          ? _value.courseDetails
          : courseDetails // ignore: cast_nullable_to_non_nullable
              as CourseDetails,
    ));
  }
}

/// @nodoc

class _$courseDetailedFetched implements courseDetailedFetched {
  const _$courseDetailedFetched({required this.courseDetails});

  @override
  final CourseDetails courseDetails;

  @override
  String toString() {
    return 'CourseDetailsState.courseDetailedFetched(courseDetails: $courseDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$courseDetailedFetched &&
            const DeepCollectionEquality()
                .equals(other.courseDetails, courseDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(courseDetails));

  @JsonKey(ignore: true)
  @override
  _$$courseDetailedFetchedCopyWith<_$courseDetailedFetched> get copyWith =>
      __$$courseDetailedFetchedCopyWithImpl<_$courseDetailedFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CourseDetails courseDetails)
        courseDetailedFetched,
    required TResult Function(String errorMessage) error,
  }) {
    return courseDetailedFetched(courseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
  }) {
    return courseDetailedFetched?.call(courseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (courseDetailedFetched != null) {
      return courseDetailedFetched(courseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(courseDetailedFetched value)
        courseDetailedFetched,
    required TResult Function(Error value) error,
  }) {
    return courseDetailedFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
  }) {
    return courseDetailedFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (courseDetailedFetched != null) {
      return courseDetailedFetched(this);
    }
    return orElse();
  }
}

abstract class courseDetailedFetched implements CourseDetailsState {
  const factory courseDetailedFetched(
      {required final CourseDetails courseDetails}) = _$courseDetailedFetched;

  CourseDetails get courseDetails => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$courseDetailedFetchedCopyWith<_$courseDetailedFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$CourseDetailsStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$Error(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CourseDetailsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CourseDetails courseDetails)
        courseDetailedFetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CourseDetails courseDetails)? courseDetailedFetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(courseDetailedFetched value)
        courseDetailedFetched,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(courseDetailedFetched value)? courseDetailedFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CourseDetailsState {
  const factory Error({required final String errorMessage}) = _$Error;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
