// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_gallery_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicGalleryArgumentsTearOff {
  const _$ComicGalleryArgumentsTearOff();

  _ComicGalleryArguments call({required List<Comic> comics}) {
    return _ComicGalleryArguments(
      comics: comics,
    );
  }
}

/// @nodoc
const $ComicGalleryArguments = _$ComicGalleryArgumentsTearOff();

/// @nodoc
mixin _$ComicGalleryArguments {
  List<Comic> get comics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicGalleryArgumentsCopyWith<ComicGalleryArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicGalleryArgumentsCopyWith<$Res> {
  factory $ComicGalleryArgumentsCopyWith(ComicGalleryArguments value,
          $Res Function(ComicGalleryArguments) then) =
      _$ComicGalleryArgumentsCopyWithImpl<$Res>;
  $Res call({List<Comic> comics});
}

/// @nodoc
class _$ComicGalleryArgumentsCopyWithImpl<$Res>
    implements $ComicGalleryArgumentsCopyWith<$Res> {
  _$ComicGalleryArgumentsCopyWithImpl(this._value, this._then);

  final ComicGalleryArguments _value;
  // ignore: unused_field
  final $Res Function(ComicGalleryArguments) _then;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_value.copyWith(
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc
abstract class _$ComicGalleryArgumentsCopyWith<$Res>
    implements $ComicGalleryArgumentsCopyWith<$Res> {
  factory _$ComicGalleryArgumentsCopyWith(_ComicGalleryArguments value,
          $Res Function(_ComicGalleryArguments) then) =
      __$ComicGalleryArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({List<Comic> comics});
}

/// @nodoc
class __$ComicGalleryArgumentsCopyWithImpl<$Res>
    extends _$ComicGalleryArgumentsCopyWithImpl<$Res>
    implements _$ComicGalleryArgumentsCopyWith<$Res> {
  __$ComicGalleryArgumentsCopyWithImpl(_ComicGalleryArguments _value,
      $Res Function(_ComicGalleryArguments) _then)
      : super(_value, (v) => _then(v as _ComicGalleryArguments));

  @override
  _ComicGalleryArguments get _value => super._value as _ComicGalleryArguments;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_ComicGalleryArguments(
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$_ComicGalleryArguments implements _ComicGalleryArguments {
  const _$_ComicGalleryArguments({required this.comics});

  @override
  final List<Comic> comics;

  @override
  String toString() {
    return 'ComicGalleryArguments(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComicGalleryArguments &&
            const DeepCollectionEquality().equals(other.comics, comics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comics));

  @JsonKey(ignore: true)
  @override
  _$ComicGalleryArgumentsCopyWith<_ComicGalleryArguments> get copyWith =>
      __$ComicGalleryArgumentsCopyWithImpl<_ComicGalleryArguments>(
          this, _$identity);
}

abstract class _ComicGalleryArguments implements ComicGalleryArguments {
  const factory _ComicGalleryArguments({required List<Comic> comics}) =
      _$_ComicGalleryArguments;

  @override
  List<Comic> get comics;
  @override
  @JsonKey(ignore: true)
  _$ComicGalleryArgumentsCopyWith<_ComicGalleryArguments> get copyWith =>
      throw _privateConstructorUsedError;
}
