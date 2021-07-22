// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'archive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArchiveStateTearOff {
  const _$ArchiveStateTearOff();

  Initial initial() {
    return const Initial();
  }

  NavigateToComic navigateToComic(Comic comic) {
    return NavigateToComic(
      comic,
    );
  }
}

/// @nodoc
const $ArchiveState = _$ArchiveStateTearOff();

/// @nodoc
mixin _$ArchiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Comic comic) navigateToComic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic)? navigateToComic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateToComic value) navigateToComic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateToComic value)? navigateToComic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveStateCopyWith<$Res> {
  factory $ArchiveStateCopyWith(
          ArchiveState value, $Res Function(ArchiveState) then) =
      _$ArchiveStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArchiveStateCopyWithImpl<$Res> implements $ArchiveStateCopyWith<$Res> {
  _$ArchiveStateCopyWithImpl(this._value, this._then);

  final ArchiveState _value;
  // ignore: unused_field
  final $Res Function(ArchiveState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ArchiveStateCopyWithImpl<$Res>
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
    return 'ArchiveState.initial()';
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
    required TResult Function(Comic comic) navigateToComic,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic)? navigateToComic,
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
    required TResult Function(NavigateToComic value) navigateToComic,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateToComic value)? navigateToComic,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ArchiveState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $NavigateToComicCopyWith<$Res> {
  factory $NavigateToComicCopyWith(
          NavigateToComic value, $Res Function(NavigateToComic) then) =
      _$NavigateToComicCopyWithImpl<$Res>;
  $Res call({Comic comic});

  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class _$NavigateToComicCopyWithImpl<$Res>
    extends _$ArchiveStateCopyWithImpl<$Res>
    implements $NavigateToComicCopyWith<$Res> {
  _$NavigateToComicCopyWithImpl(
      NavigateToComic _value, $Res Function(NavigateToComic) _then)
      : super(_value, (v) => _then(v as NavigateToComic));

  @override
  NavigateToComic get _value => super._value as NavigateToComic;

  @override
  $Res call({
    Object? comic = freezed,
  }) {
    return _then(NavigateToComic(
      comic == freezed
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
    ));
  }

  @override
  $ComicCopyWith<$Res> get comic {
    return $ComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value));
    });
  }
}

/// @nodoc

class _$NavigateToComic implements NavigateToComic {
  const _$NavigateToComic(this.comic);

  @override
  final Comic comic;

  @override
  String toString() {
    return 'ArchiveState.navigateToComic(comic: $comic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToComic &&
            (identical(other.comic, comic) ||
                const DeepCollectionEquality().equals(other.comic, comic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comic);

  @JsonKey(ignore: true)
  @override
  $NavigateToComicCopyWith<NavigateToComic> get copyWith =>
      _$NavigateToComicCopyWithImpl<NavigateToComic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Comic comic) navigateToComic,
  }) {
    return navigateToComic(comic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Comic comic)? navigateToComic,
    required TResult orElse(),
  }) {
    if (navigateToComic != null) {
      return navigateToComic(comic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateToComic value) navigateToComic,
  }) {
    return navigateToComic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateToComic value)? navigateToComic,
    required TResult orElse(),
  }) {
    if (navigateToComic != null) {
      return navigateToComic(this);
    }
    return orElse();
  }
}

abstract class NavigateToComic implements ArchiveState {
  const factory NavigateToComic(Comic comic) = _$NavigateToComic;

  Comic get comic => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToComicCopyWith<NavigateToComic> get copyWith =>
      throw _privateConstructorUsedError;
}
