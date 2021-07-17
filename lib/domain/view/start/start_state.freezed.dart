// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'start_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StartStateTearOff {
  const _$StartStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading(int done, int all) {
    return Loading(
      done,
      all,
    );
  }

  Error error(Exception exception) {
    return Error(
      exception,
    );
  }

  NavigateToComics navigateToComics() {
    return const NavigateToComics();
  }
}

/// @nodoc
const $StartState = _$StartStateTearOff();

/// @nodoc
mixin _$StartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Exception exception) error,
    required TResult Function() navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Exception exception)? error,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartStateCopyWith<$Res> {
  factory $StartStateCopyWith(
          StartState value, $Res Function(StartState) then) =
      _$StartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartStateCopyWithImpl<$Res> implements $StartStateCopyWith<$Res> {
  _$StartStateCopyWithImpl(this._value, this._then);

  final StartState _value;
  // ignore: unused_field
  final $Res Function(StartState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'StartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Exception exception) error,
    required TResult Function() navigateToComics,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Exception exception)? error,
    TResult Function()? navigateToComics,
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
    required TResult Function(Error value) error,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StartState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({int done, int all});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? done = freezed,
    Object? all = freezed,
  }) {
    return _then(Loading(
      done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.done, this.all);

  @override
  final int done;
  @override
  final int all;

  @override
  String toString() {
    return 'StartState.loading(done: $done, all: $all)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.all, all) ||
                const DeepCollectionEquality().equals(other.all, all)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(all);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Exception exception) error,
    required TResult Function() navigateToComics,
  }) {
    return loading(done, all);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Exception exception)? error,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(done, all);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StartState {
  const factory Loading(int done, int all) = _$Loading;

  int get done => throw _privateConstructorUsedError;
  int get all => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(Error(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'StartState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Exception exception) error,
    required TResult Function() navigateToComics,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Exception exception)? error,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements StartState {
  const factory Error(Exception exception) = _$Error;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToComicsCopyWith<$Res> {
  factory $NavigateToComicsCopyWith(
          NavigateToComics value, $Res Function(NavigateToComics) then) =
      _$NavigateToComicsCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateToComicsCopyWithImpl<$Res>
    extends _$StartStateCopyWithImpl<$Res>
    implements $NavigateToComicsCopyWith<$Res> {
  _$NavigateToComicsCopyWithImpl(
      NavigateToComics _value, $Res Function(NavigateToComics) _then)
      : super(_value, (v) => _then(v as NavigateToComics));

  @override
  NavigateToComics get _value => super._value as NavigateToComics;
}

/// @nodoc

class _$NavigateToComics implements NavigateToComics {
  const _$NavigateToComics();

  @override
  String toString() {
    return 'StartState.navigateToComics()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NavigateToComics);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Exception exception) error,
    required TResult Function() navigateToComics,
  }) {
    return navigateToComics();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Exception exception)? error,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) {
    if (navigateToComics != null) {
      return navigateToComics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return navigateToComics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (navigateToComics != null) {
      return navigateToComics(this);
    }
    return orElse();
  }
}

abstract class NavigateToComics implements StartState {
  const factory NavigateToComics() = _$NavigateToComics;
}
