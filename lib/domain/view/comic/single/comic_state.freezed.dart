// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicStateTearOff {
  const _$ComicStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DisplayComic displayComic(
      {required Key key,
      required Comic comic,
      required ComicPanels comicPanels}) {
    return DisplayComic(
      key: key,
      comic: comic,
      comicPanels: comicPanels,
    );
  }

  ShowError showError({required Key key, required String message}) {
    return ShowError(
      key: key,
      message: message,
    );
  }
}

/// @nodoc
const $ComicState = _$ComicStateTearOff();

/// @nodoc
mixin _$ComicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Key key, String message) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(ShowError value) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicStateCopyWith<$Res> {
  factory $ComicStateCopyWith(
          ComicState value, $Res Function(ComicState) then) =
      _$ComicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ComicStateCopyWithImpl<$Res> implements $ComicStateCopyWith<$Res> {
  _$ComicStateCopyWithImpl(this._value, this._then);

  final ComicState _value;
  // ignore: unused_field
  final $Res Function(ComicState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ComicStateCopyWithImpl<$Res>
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
    return 'ComicState.initial()';
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
    required TResult Function(Key key, Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Key key, String message) showError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
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
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(ShowError value) showError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ComicState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DisplayComicCopyWith<$Res> {
  factory $DisplayComicCopyWith(
          DisplayComic value, $Res Function(DisplayComic) then) =
      _$DisplayComicCopyWithImpl<$Res>;
  $Res call({Key key, Comic comic, ComicPanels comicPanels});

  $ComicCopyWith<$Res> get comic;
  $ComicPanelsCopyWith<$Res> get comicPanels;
}

/// @nodoc
class _$DisplayComicCopyWithImpl<$Res> extends _$ComicStateCopyWithImpl<$Res>
    implements $DisplayComicCopyWith<$Res> {
  _$DisplayComicCopyWithImpl(
      DisplayComic _value, $Res Function(DisplayComic) _then)
      : super(_value, (v) => _then(v as DisplayComic));

  @override
  DisplayComic get _value => super._value as DisplayComic;

  @override
  $Res call({
    Object? key = freezed,
    Object? comic = freezed,
    Object? comicPanels = freezed,
  }) {
    return _then(DisplayComic(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      comic: comic == freezed
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
      comicPanels: comicPanels == freezed
          ? _value.comicPanels
          : comicPanels // ignore: cast_nullable_to_non_nullable
              as ComicPanels,
    ));
  }

  @override
  $ComicCopyWith<$Res> get comic {
    return $ComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value));
    });
  }

  @override
  $ComicPanelsCopyWith<$Res> get comicPanels {
    return $ComicPanelsCopyWith<$Res>(_value.comicPanels, (value) {
      return _then(_value.copyWith(comicPanels: value));
    });
  }
}

/// @nodoc

class _$DisplayComic implements DisplayComic {
  const _$DisplayComic(
      {required this.key, required this.comic, required this.comicPanels});

  @override
  final Key key;
  @override
  final Comic comic;
  @override
  final ComicPanels comicPanels;

  @override
  String toString() {
    return 'ComicState.displayComic(key: $key, comic: $comic, comicPanels: $comicPanels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisplayComic &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.comic, comic) || other.comic == comic) &&
            (identical(other.comicPanels, comicPanels) ||
                other.comicPanels == comicPanels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, comic, comicPanels);

  @JsonKey(ignore: true)
  @override
  $DisplayComicCopyWith<DisplayComic> get copyWith =>
      _$DisplayComicCopyWithImpl<DisplayComic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Key key, Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Key key, String message) showError,
  }) {
    return displayComic(key, comic, comicPanels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
  }) {
    return displayComic?.call(key, comic, comicPanels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
    required TResult orElse(),
  }) {
    if (displayComic != null) {
      return displayComic(key, comic, comicPanels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(ShowError value) showError,
  }) {
    return displayComic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
  }) {
    return displayComic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (displayComic != null) {
      return displayComic(this);
    }
    return orElse();
  }
}

abstract class DisplayComic implements ComicState {
  const factory DisplayComic(
      {required Key key,
      required Comic comic,
      required ComicPanels comicPanels}) = _$DisplayComic;

  Key get key;
  Comic get comic;
  ComicPanels get comicPanels;
  @JsonKey(ignore: true)
  $DisplayComicCopyWith<DisplayComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowErrorCopyWith<$Res> {
  factory $ShowErrorCopyWith(ShowError value, $Res Function(ShowError) then) =
      _$ShowErrorCopyWithImpl<$Res>;
  $Res call({Key key, String message});
}

/// @nodoc
class _$ShowErrorCopyWithImpl<$Res> extends _$ComicStateCopyWithImpl<$Res>
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
    return 'ComicState.showError(key: $key, message: $message)';
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
    required TResult Function(Key key, Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Key key, String message) showError,
  }) {
    return showError(key, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
  }) {
    return showError?.call(key, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Key key, Comic comic, ComicPanels comicPanels)?
        displayComic,
    TResult Function(Key key, String message)? showError,
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
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(ShowError value) showError,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowError implements ComicState {
  const factory ShowError({required Key key, required String message}) =
      _$ShowError;

  Key get key;
  String get message;
  @JsonKey(ignore: true)
  $ShowErrorCopyWith<ShowError> get copyWith =>
      throw _privateConstructorUsedError;
}
