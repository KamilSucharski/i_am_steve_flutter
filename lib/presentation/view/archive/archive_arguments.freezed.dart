// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'archive_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArchiveArgumentsTearOff {
  const _$ArchiveArgumentsTearOff();

  _ArchiveArguments call({required List<Comic> comics}) {
    return _ArchiveArguments(
      comics: comics,
    );
  }
}

/// @nodoc
const $ArchiveArguments = _$ArchiveArgumentsTearOff();

/// @nodoc
mixin _$ArchiveArguments {
  List<Comic> get comics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchiveArgumentsCopyWith<ArchiveArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveArgumentsCopyWith<$Res> {
  factory $ArchiveArgumentsCopyWith(
          ArchiveArguments value, $Res Function(ArchiveArguments) then) =
      _$ArchiveArgumentsCopyWithImpl<$Res>;
  $Res call({List<Comic> comics});
}

/// @nodoc
class _$ArchiveArgumentsCopyWithImpl<$Res>
    implements $ArchiveArgumentsCopyWith<$Res> {
  _$ArchiveArgumentsCopyWithImpl(this._value, this._then);

  final ArchiveArguments _value;
  // ignore: unused_field
  final $Res Function(ArchiveArguments) _then;

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
abstract class _$ArchiveArgumentsCopyWith<$Res>
    implements $ArchiveArgumentsCopyWith<$Res> {
  factory _$ArchiveArgumentsCopyWith(
          _ArchiveArguments value, $Res Function(_ArchiveArguments) then) =
      __$ArchiveArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({List<Comic> comics});
}

/// @nodoc
class __$ArchiveArgumentsCopyWithImpl<$Res>
    extends _$ArchiveArgumentsCopyWithImpl<$Res>
    implements _$ArchiveArgumentsCopyWith<$Res> {
  __$ArchiveArgumentsCopyWithImpl(
      _ArchiveArguments _value, $Res Function(_ArchiveArguments) _then)
      : super(_value, (v) => _then(v as _ArchiveArguments));

  @override
  _ArchiveArguments get _value => super._value as _ArchiveArguments;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_ArchiveArguments(
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$_ArchiveArguments implements _ArchiveArguments {
  const _$_ArchiveArguments({required this.comics});

  @override
  final List<Comic> comics;

  @override
  String toString() {
    return 'ArchiveArguments(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArchiveArguments &&
            const DeepCollectionEquality().equals(other.comics, comics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comics));

  @JsonKey(ignore: true)
  @override
  _$ArchiveArgumentsCopyWith<_ArchiveArguments> get copyWith =>
      __$ArchiveArgumentsCopyWithImpl<_ArchiveArguments>(this, _$identity);
}

abstract class _ArchiveArguments implements ArchiveArguments {
  const factory _ArchiveArguments({required List<Comic> comics}) =
      _$_ArchiveArguments;

  @override
  List<Comic> get comics;
  @override
  @JsonKey(ignore: true)
  _$ArchiveArgumentsCopyWith<_ArchiveArguments> get copyWith =>
      throw _privateConstructorUsedError;
}
