// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDto _$ComicDtoFromJson(Map<String, dynamic> json) {
  return _ComicDto.fromJson(json);
}

/// @nodoc
class _$ComicDtoTearOff {
  const _$ComicDtoTearOff();

  _ComicDto call(
      {required int number, required String title, required String date}) {
    return _ComicDto(
      number: number,
      title: title,
      date: date,
    );
  }

  ComicDto fromJson(Map<String, Object?> json) {
    return ComicDto.fromJson(json);
  }
}

/// @nodoc
const $ComicDto = _$ComicDtoTearOff();

/// @nodoc
mixin _$ComicDto {
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDtoCopyWith<ComicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDtoCopyWith<$Res> {
  factory $ComicDtoCopyWith(ComicDto value, $Res Function(ComicDto) then) =
      _$ComicDtoCopyWithImpl<$Res>;
  $Res call({int number, String title, String date});
}

/// @nodoc
class _$ComicDtoCopyWithImpl<$Res> implements $ComicDtoCopyWith<$Res> {
  _$ComicDtoCopyWithImpl(this._value, this._then);

  final ComicDto _value;
  // ignore: unused_field
  final $Res Function(ComicDto) _then;

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
abstract class _$ComicDtoCopyWith<$Res> implements $ComicDtoCopyWith<$Res> {
  factory _$ComicDtoCopyWith(_ComicDto value, $Res Function(_ComicDto) then) =
      __$ComicDtoCopyWithImpl<$Res>;
  @override
  $Res call({int number, String title, String date});
}

/// @nodoc
class __$ComicDtoCopyWithImpl<$Res> extends _$ComicDtoCopyWithImpl<$Res>
    implements _$ComicDtoCopyWith<$Res> {
  __$ComicDtoCopyWithImpl(_ComicDto _value, $Res Function(_ComicDto) _then)
      : super(_value, (v) => _then(v as _ComicDto));

  @override
  _ComicDto get _value => super._value as _ComicDto;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_ComicDto(
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
class _$_ComicDto implements _ComicDto {
  const _$_ComicDto(
      {required this.number, required this.title, required this.date});

  factory _$_ComicDto.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDtoFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final String date;

  @override
  String toString() {
    return 'ComicDto(number: $number, title: $title, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComicDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, title, date);

  @JsonKey(ignore: true)
  @override
  _$ComicDtoCopyWith<_ComicDto> get copyWith =>
      __$ComicDtoCopyWithImpl<_ComicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDtoToJson(this);
  }
}

abstract class _ComicDto implements ComicDto {
  const factory _ComicDto(
      {required int number,
      required String title,
      required String date}) = _$_ComicDto;

  factory _ComicDto.fromJson(Map<String, dynamic> json) = _$_ComicDto.fromJson;

  @override
  int get number;
  @override
  String get title;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$ComicDtoCopyWith<_ComicDto> get copyWith =>
      throw _privateConstructorUsedError;
}
