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

  HandleError handleError(Error error) {
    return HandleError(
      error,
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
    required TResult Function(Error error) handleError,
    required TResult Function() navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Error error)? handleError,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(HandleError value) handleError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(HandleError value)? handleError,
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
    required TResult Function(Error error) handleError,
    required TResult Function() navigateToComics,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Error error)? handleError,
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
    required TResult Function(HandleError value) handleError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(HandleError value)? handleError,
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
    required TResult Function(Error error) handleError,
    required TResult Function() navigateToComics,
  }) {
    return loading(done, all);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Error error)? handleError,
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
    required TResult Function(HandleError value) handleError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(HandleError value)? handleError,
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
abstract class $HandleErrorCopyWith<$Res> {
  factory $HandleErrorCopyWith(
          HandleError value, $Res Function(HandleError) then) =
      _$HandleErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$HandleErrorCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $HandleErrorCopyWith<$Res> {
  _$HandleErrorCopyWithImpl(
      HandleError _value, $Res Function(HandleError) _then)
      : super(_value, (v) => _then(v as HandleError));

  @override
  HandleError get _value => super._value as HandleError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(HandleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$HandleError implements HandleError {
  const _$HandleError(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'StartState.handleError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HandleError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $HandleErrorCopyWith<HandleError> get copyWith =>
      _$HandleErrorCopyWithImpl<HandleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int done, int all) loading,
    required TResult Function(Error error) handleError,
    required TResult Function() navigateToComics,
  }) {
    return handleError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Error error)? handleError,
    TResult Function()? navigateToComics,
    required TResult orElse(),
  }) {
    if (handleError != null) {
      return handleError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(HandleError value) handleError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return handleError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(HandleError value)? handleError,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (handleError != null) {
      return handleError(this);
    }
    return orElse();
  }
}

abstract class HandleError implements StartState {
  const factory HandleError(Error error) = _$HandleError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HandleErrorCopyWith<HandleError> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Error error) handleError,
    required TResult Function() navigateToComics,
  }) {
    return navigateToComics();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int done, int all)? loading,
    TResult Function(Error error)? handleError,
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
    required TResult Function(HandleError value) handleError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return navigateToComics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(HandleError value)? handleError,
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
