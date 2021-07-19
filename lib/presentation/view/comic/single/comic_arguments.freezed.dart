// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comic_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicArgumentsTearOff {
  const _$ComicArgumentsTearOff();

  _ComicArguments call({required Comic comic}) {
    return _ComicArguments(
      comic: comic,
    );
  }
}

/// @nodoc
const $ComicArguments = _$ComicArgumentsTearOff();

/// @nodoc
mixin _$ComicArguments {
  Comic get comic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicArgumentsCopyWith<ComicArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicArgumentsCopyWith<$Res> {
  factory $ComicArgumentsCopyWith(
          ComicArguments value, $Res Function(ComicArguments) then) =
      _$ComicArgumentsCopyWithImpl<$Res>;
  $Res call({Comic comic});

  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class _$ComicArgumentsCopyWithImpl<$Res>
    implements $ComicArgumentsCopyWith<$Res> {
  _$ComicArgumentsCopyWithImpl(this._value, this._then);

  final ComicArguments _value;
  // ignore: unused_field
  final $Res Function(ComicArguments) _then;

  @override
  $Res call({
    Object? comic = freezed,
  }) {
    return _then(_value.copyWith(
      comic: comic == freezed
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
abstract class _$ComicArgumentsCopyWith<$Res>
    implements $ComicArgumentsCopyWith<$Res> {
  factory _$ComicArgumentsCopyWith(
          _ComicArguments value, $Res Function(_ComicArguments) then) =
      __$ComicArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Comic comic});

  @override
  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class __$ComicArgumentsCopyWithImpl<$Res>
    extends _$ComicArgumentsCopyWithImpl<$Res>
    implements _$ComicArgumentsCopyWith<$Res> {
  __$ComicArgumentsCopyWithImpl(
      _ComicArguments _value, $Res Function(_ComicArguments) _then)
      : super(_value, (v) => _then(v as _ComicArguments));

  @override
  _ComicArguments get _value => super._value as _ComicArguments;

  @override
  $Res call({
    Object? comic = freezed,
  }) {
    return _then(_ComicArguments(
      comic: comic == freezed
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
    ));
  }
}

/// @nodoc

class _$_ComicArguments implements _ComicArguments {
  const _$_ComicArguments({required this.comic});

  @override
  final Comic comic;

  @override
  String toString() {
    return 'ComicArguments(comic: $comic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ComicArguments &&
            (identical(other.comic, comic) ||
                const DeepCollectionEquality().equals(other.comic, comic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comic);

  @JsonKey(ignore: true)
  @override
  _$ComicArgumentsCopyWith<_ComicArguments> get copyWith =>
      __$ComicArgumentsCopyWithImpl<_ComicArguments>(this, _$identity);
}

abstract class _ComicArguments implements ComicArguments {
  const factory _ComicArguments({required Comic comic}) = _$_ComicArguments;

  @override
  Comic get comic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ComicArgumentsCopyWith<_ComicArguments> get copyWith =>
      throw _privateConstructorUsedError;
}
