// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultIdleCopyWith<T, $Res> {
  factory _$$ResultIdleCopyWith(
          _$ResultIdle<T> value, $Res Function(_$ResultIdle<T>) then) =
      __$$ResultIdleCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$ResultIdleCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultIdle<T>>
    implements _$$ResultIdleCopyWith<T, $Res> {
  __$$ResultIdleCopyWithImpl(
      _$ResultIdle<T> _value, $Res Function(_$ResultIdle<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultIdle<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResultIdle<T> implements ResultIdle<T> {
  const _$ResultIdle({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'Result<$T>.idle(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultIdle<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultIdleCopyWith<T, _$ResultIdle<T>> get copyWith =>
      __$$ResultIdleCopyWithImpl<T, _$ResultIdle<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return idle(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return idle?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ResultIdle<T> implements Result<T> {
  const factory ResultIdle({final T? data}) = _$ResultIdle<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$ResultIdleCopyWith<T, _$ResultIdle<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultLoadingCopyWith<T, $Res> {
  factory _$$ResultLoadingCopyWith(
          _$ResultLoading<T> value, $Res Function(_$ResultLoading<T>) then) =
      __$$ResultLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultLoadingCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultLoading<T>>
    implements _$$ResultLoadingCopyWith<T, $Res> {
  __$$ResultLoadingCopyWithImpl(
      _$ResultLoading<T> _value, $Res Function(_$ResultLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoading<T> implements ResultLoading<T> {
  const _$ResultLoading();

  @override
  String toString() {
    return 'Result<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultLoading<T> implements Result<T> {
  const factory ResultLoading() = _$ResultLoading<T>;
}

/// @nodoc
abstract class _$$ResultDataCopyWith<T, $Res> {
  factory _$$ResultDataCopyWith(
          _$ResultData<T> value, $Res Function(_$ResultData<T>) then) =
      __$$ResultDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultDataCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultData<T>>
    implements _$$ResultDataCopyWith<T, $Res> {
  __$$ResultDataCopyWithImpl(
      _$ResultData<T> _value, $Res Function(_$ResultData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultData<T> implements ResultData<T> {
  const _$ResultData(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataCopyWith<T, _$ResultData<T>> get copyWith =>
      __$$ResultDataCopyWithImpl<T, _$ResultData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ResultData<T> implements Result<T> {
  const factory ResultData(final T data) = _$ResultData<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResultDataCopyWith<T, _$ResultData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorCopyWith<T, $Res> {
  factory _$$ResultErrorCopyWith(
          _$ResultError<T> value, $Res Function(_$ResultError<T>) then) =
      __$$ResultErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ResultErrorCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultError<T>>
    implements _$$ResultErrorCopyWith<T, $Res> {
  __$$ResultErrorCopyWithImpl(
      _$ResultError<T> _value, $Res Function(_$ResultError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ResultError<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResultError<T> implements ResultError<T> {
  const _$ResultError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorCopyWith<T, _$ResultError<T>> get copyWith =>
      __$$ResultErrorCopyWithImpl<T, _$ResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<T> implements Result<T> {
  const factory ResultError(final String? error) = _$ResultError<T>;

  String? get error;
  @JsonKey(ignore: true)
  _$$ResultErrorCopyWith<T, _$ResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
