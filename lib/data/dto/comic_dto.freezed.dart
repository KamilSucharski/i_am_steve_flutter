// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDTO _$ComicDTOFromJson(Map<String, dynamic> json) {
  return _ComicDTO.fromJson(json);
}

/// @nodoc
class _$ComicDTOTearOff {
  const _$ComicDTOTearOff();

  _ComicDTO call(
      {required int number, required String title, required String date}) {
    return _ComicDTO(
      number: number,
      title: title,
      date: date,
    );
  }

  ComicDTO fromJson(Map<String, Object> json) {
    return ComicDTO.fromJson(json);
  }
}

/// @nodoc
const $ComicDTO = _$ComicDTOTearOff();

/// @nodoc
mixin _$ComicDTO {
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDTOCopyWith<ComicDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDTOCopyWith<$Res> {
  factory $ComicDTOCopyWith(ComicDTO value, $Res Function(ComicDTO) then) =
      _$ComicDTOCopyWithImpl<$Res>;
  $Res call({int number, String title, String date});
}

/// @nodoc
class _$ComicDTOCopyWithImpl<$Res> implements $ComicDTOCopyWith<$Res> {
  _$ComicDTOCopyWithImpl(this._value, this._then);

  final ComicDTO _value;
  // ignore: unused_field
  final $Res Function(ComicDTO) _then;

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
abstract class _$ComicDTOCopyWith<$Res> implements $ComicDTOCopyWith<$Res> {
  factory _$ComicDTOCopyWith(_ComicDTO value, $Res Function(_ComicDTO) then) =
      __$ComicDTOCopyWithImpl<$Res>;
  @override
  $Res call({int number, String title, String date});
}

/// @nodoc
class __$ComicDTOCopyWithImpl<$Res> extends _$ComicDTOCopyWithImpl<$Res>
    implements _$ComicDTOCopyWith<$Res> {
  __$ComicDTOCopyWithImpl(_ComicDTO _value, $Res Function(_ComicDTO) _then)
      : super(_value, (v) => _then(v as _ComicDTO));

  @override
  _ComicDTO get _value => super._value as _ComicDTO;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_ComicDTO(
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
class _$_ComicDTO implements _ComicDTO {
  const _$_ComicDTO(
      {required this.number, required this.title, required this.date});

  factory _$_ComicDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ComicDTOFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final String date;

  @override
  String toString() {
    return 'ComicDTO(number: $number, title: $title, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ComicDTO &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$ComicDTOCopyWith<_ComicDTO> get copyWith =>
      __$ComicDTOCopyWithImpl<_ComicDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ComicDTOToJson(this);
  }
}

abstract class _ComicDTO implements ComicDTO {
  const factory _ComicDTO(
      {required int number,
      required String title,
      required String date}) = _$_ComicDTO;

  factory _ComicDTO.fromJson(Map<String, dynamic> json) = _$_ComicDTO.fromJson;

  @override
  int get number => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ComicDTOCopyWith<_ComicDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
