// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  DisplayComic displayComic(Comic comic, ComicPanels comicPanels) {
    return DisplayComic(
      comic,
      comicPanels,
    );
  }

  HandleError handleError(Error error) {
    return HandleError(
      error,
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
    required TResult Function(Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Error error) handleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic, ComicPanels comicPanels)? displayComic,
    TResult Function(Error error)? handleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(HandleError value) handleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(HandleError value)? handleError,
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
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Error error) handleError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic, ComicPanels comicPanels)? displayComic,
    TResult Function(Error error)? handleError,
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
    required TResult Function(HandleError value) handleError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(HandleError value)? handleError,
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
  $Res call({Comic comic, ComicPanels comicPanels});

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
    Object? comic = freezed,
    Object? comicPanels = freezed,
  }) {
    return _then(DisplayComic(
      comic == freezed
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
      comicPanels == freezed
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
  const _$DisplayComic(this.comic, this.comicPanels);

  @override
  final Comic comic;
  @override
  final ComicPanels comicPanels;

  @override
  String toString() {
    return 'ComicState.displayComic(comic: $comic, comicPanels: $comicPanels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisplayComic &&
            (identical(other.comic, comic) ||
                const DeepCollectionEquality().equals(other.comic, comic)) &&
            (identical(other.comicPanels, comicPanels) ||
                const DeepCollectionEquality()
                    .equals(other.comicPanels, comicPanels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comic) ^
      const DeepCollectionEquality().hash(comicPanels);

  @JsonKey(ignore: true)
  @override
  $DisplayComicCopyWith<DisplayComic> get copyWith =>
      _$DisplayComicCopyWithImpl<DisplayComic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Error error) handleError,
  }) {
    return displayComic(comic, comicPanels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic, ComicPanels comicPanels)? displayComic,
    TResult Function(Error error)? handleError,
    required TResult orElse(),
  }) {
    if (displayComic != null) {
      return displayComic(comic, comicPanels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(HandleError value) handleError,
  }) {
    return displayComic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(HandleError value)? handleError,
    required TResult orElse(),
  }) {
    if (displayComic != null) {
      return displayComic(this);
    }
    return orElse();
  }
}

abstract class DisplayComic implements ComicState {
  const factory DisplayComic(Comic comic, ComicPanels comicPanels) =
      _$DisplayComic;

  Comic get comic => throw _privateConstructorUsedError;
  ComicPanels get comicPanels => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayComicCopyWith<DisplayComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandleErrorCopyWith<$Res> {
  factory $HandleErrorCopyWith(
          HandleError value, $Res Function(HandleError) then) =
      _$HandleErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$HandleErrorCopyWithImpl<$Res> extends _$ComicStateCopyWithImpl<$Res>
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
    return 'ComicState.handleError(error: $error)';
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
    required TResult Function(Comic comic, ComicPanels comicPanels)
        displayComic,
    required TResult Function(Error error) handleError,
  }) {
    return handleError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic, ComicPanels comicPanels)? displayComic,
    TResult Function(Error error)? handleError,
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
    required TResult Function(DisplayComic value) displayComic,
    required TResult Function(HandleError value) handleError,
  }) {
    return handleError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DisplayComic value)? displayComic,
    TResult Function(HandleError value)? handleError,
    required TResult orElse(),
  }) {
    if (handleError != null) {
      return handleError(this);
    }
    return orElse();
  }
}

abstract class HandleError implements ComicState {
  const factory HandleError(Error error) = _$HandleError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HandleErrorCopyWith<HandleError> get copyWith =>
      throw _privateConstructorUsedError;
}
