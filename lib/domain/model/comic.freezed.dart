// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
class _$ComicTearOff {
  const _$ComicTearOff();

  _Comic call(
      {required int number, required String title, required String date}) {
    return _Comic(
      number: number,
      title: title,
      date: date,
    );
  }

  Comic fromJson(Map<String, Object?> json) {
    return Comic.fromJson(json);
  }
}

/// @nodoc
const $Comic = _$ComicTearOff();

/// @nodoc
mixin _$Comic {
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res>;
  $Res call({int number, String title, String date});
}

/// @nodoc
class _$ComicCopyWithImpl<$Res> implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  final Comic _value;
  // ignore: unused_field
  final $Res Function(Comic) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ComicCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$ComicCopyWith(_Comic value, $Res Function(_Comic) then) =
      __$ComicCopyWithImpl<$Res>;
  @override
  $Res call({int number, String title, String date});
}

/// @nodoc
class __$ComicCopyWithImpl<$Res> extends _$ComicCopyWithImpl<$Res>
    implements _$ComicCopyWith<$Res> {
  __$ComicCopyWithImpl(_Comic _value, $Res Function(_Comic) _then)
      : super(_value, (v) => _then(v as _Comic));

  @override
  _Comic get _value => super._value as _Comic;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_Comic(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comic implements _Comic {
  const _$_Comic(
      {required this.number, required this.title, required this.date});

  factory _$_Comic.fromJson(Map<String, dynamic> json) =>
      _$$_ComicFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final String date;

  @override
  String toString() {
    return 'Comic(number: $number, title: $title, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comic &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, title, date);

  @JsonKey(ignore: true)
  @override
  _$ComicCopyWith<_Comic> get copyWith =>
      __$ComicCopyWithImpl<_Comic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicToJson(this);
  }
}

abstract class _Comic implements Comic {
  const factory _Comic(
      {required int number,
      required String title,
      required String date}) = _$_Comic;

  factory _Comic.fromJson(Map<String, dynamic> json) = _$_Comic.fromJson;

  @override
  int get number;
  @override
  String get title;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$ComicCopyWith<_Comic> get copyWith => throw _privateConstructorUsedError;
}
