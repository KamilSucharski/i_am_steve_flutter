// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  SetLoading setLoading(
      {required Key key, required int done, required int all}) {
    return SetLoading(
      key: key,
      done: done,
      all: all,
    );
  }

  ShowError showError({required Key key, required String message}) {
    return ShowError(
      key: key,
      message: message,
    );
  }

  NavigateToComics navigateToComics(
      {required Key key, required List<Comic> comics}) {
    return NavigateToComics(
      key: key,
      comics: comics,
    );
  }
}

/// @nodoc
const $StartState = _$StartStateTearOff();

/// @nodoc
mixin _$StartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, int done, int all) setLoading,
    required TResult Function(Key key, String message) showError,
    required TResult Function(Key key, List<Comic> comics) navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(ShowError value) showError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, int done, int all) setLoading,
    required TResult Function(Key key, String message) showError,
    required TResult Function(Key key, List<Comic> comics) navigateToComics,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
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
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(ShowError value) showError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
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
abstract class $SetLoadingCopyWith<$Res> {
  factory $SetLoadingCopyWith(
          SetLoading value, $Res Function(SetLoading) then) =
      _$SetLoadingCopyWithImpl<$Res>;
  $Res call({Key key, int done, int all});
}

/// @nodoc
class _$SetLoadingCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $SetLoadingCopyWith<$Res> {
  _$SetLoadingCopyWithImpl(SetLoading _value, $Res Function(SetLoading) _then)
      : super(_value, (v) => _then(v as SetLoading));

  @override
  SetLoading get _value => super._value as SetLoading;

  @override
  $Res call({
    Object? key = freezed,
    Object? done = freezed,
    Object? all = freezed,
  }) {
    return _then(SetLoading(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetLoading implements SetLoading {
  const _$SetLoading(
      {required this.key, required this.done, required this.all});

  @override
  final Key key;
  @override
  final int done;
  @override
  final int all;

  @override
  String toString() {
    return 'StartState.setLoading(key: $key, done: $done, all: $all)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetLoading &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.all, all) || other.all == all));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, done, all);

  @JsonKey(ignore: true)
  @override
  $SetLoadingCopyWith<SetLoading> get copyWith =>
      _$SetLoadingCopyWithImpl<SetLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, int done, int all) setLoading,
    required TResult Function(Key key, String message) showError,
    required TResult Function(Key key, List<Comic> comics) navigateToComics,
  }) {
    return setLoading(key, done, all);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
  }) {
    return setLoading?.call(key, done, all);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(key, done, all);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(ShowError value) showError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class SetLoading implements StartState {
  const factory SetLoading(
      {required Key key, required int done, required int all}) = _$SetLoading;

  Key get key;
  int get done;
  int get all;
  @JsonKey(ignore: true)
  $SetLoadingCopyWith<SetLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowErrorCopyWith<$Res> {
  factory $ShowErrorCopyWith(ShowError value, $Res Function(ShowError) then) =
      _$ShowErrorCopyWithImpl<$Res>;
  $Res call({Key key, String message});
}

/// @nodoc
class _$ShowErrorCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements $ShowErrorCopyWith<$Res> {
  _$ShowErrorCopyWithImpl(ShowError _value, $Res Function(ShowError) _then)
      : super(_value, (v) => _then(v as ShowError));

  @override
  ShowError get _value => super._value as ShowError;

  @override
  $Res call({
    Object? key = freezed,
    Object? message = freezed,
  }) {
    return _then(ShowError(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowError implements ShowError {
  const _$ShowError({required this.key, required this.message});

  @override
  final Key key;
  @override
  final String message;

  @override
  String toString() {
    return 'StartState.showError(key: $key, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowError &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, message);

  @JsonKey(ignore: true)
  @override
  $ShowErrorCopyWith<ShowError> get copyWith =>
      _$ShowErrorCopyWithImpl<ShowError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, int done, int all) setLoading,
    required TResult Function(Key key, String message) showError,
    required TResult Function(Key key, List<Comic> comics) navigateToComics,
  }) {
    return showError(key, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
  }) {
    return showError?.call(key, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(key, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(ShowError value) showError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowError implements StartState {
  const factory ShowError({required Key key, required String message}) =
      _$ShowError;

  Key get key;
  String get message;
  @JsonKey(ignore: true)
  $ShowErrorCopyWith<ShowError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToComicsCopyWith<$Res> {
  factory $NavigateToComicsCopyWith(
          NavigateToComics value, $Res Function(NavigateToComics) then) =
      _$NavigateToComicsCopyWithImpl<$Res>;
  $Res call({Key key, List<Comic> comics});
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

  @override
  $Res call({
    Object? key = freezed,
    Object? comics = freezed,
  }) {
    return _then(NavigateToComics(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$NavigateToComics implements NavigateToComics {
  const _$NavigateToComics({required this.key, required this.comics});

  @override
  final Key key;
  @override
  final List<Comic> comics;

  @override
  String toString() {
    return 'StartState.navigateToComics(key: $key, comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToComics &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.comics, comics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(comics));

  @JsonKey(ignore: true)
  @override
  $NavigateToComicsCopyWith<NavigateToComics> get copyWith =>
      _$NavigateToComicsCopyWithImpl<NavigateToComics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, int done, int all) setLoading,
    required TResult Function(Key key, String message) showError,
    required TResult Function(Key key, List<Comic> comics) navigateToComics,
  }) {
    return navigateToComics(key, comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
  }) {
    return navigateToComics?.call(key, comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, int done, int all)? setLoading,
    TResult Function(Key key, String message)? showError,
    TResult Function(Key key, List<Comic> comics)? navigateToComics,
    required TResult orElse(),
  }) {
    if (navigateToComics != null) {
      return navigateToComics(key, comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(ShowError value) showError,
    required TResult Function(NavigateToComics value) navigateToComics,
  }) {
    return navigateToComics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
    TResult Function(NavigateToComics value)? navigateToComics,
  }) {
    return navigateToComics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(ShowError value)? showError,
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
  const factory NavigateToComics(
      {required Key key, required List<Comic> comics}) = _$NavigateToComics;

  Key get key;
  List<Comic> get comics;
  @JsonKey(ignore: true)
  $NavigateToComicsCopyWith<NavigateToComics> get copyWith =>
      throw _privateConstructorUsedError;
}
