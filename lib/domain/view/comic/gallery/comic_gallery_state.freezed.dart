// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comic_gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicGalleryStateTearOff {
  const _$ComicGalleryStateTearOff();

  SetButtonVisibility setButtonVisibility(
      bool previousButtonVisible, bool nextButtonVisible) {
    return SetButtonVisibility(
      previousButtonVisible,
      nextButtonVisible,
    );
  }
}

/// @nodoc
const $ComicGalleryState = _$ComicGalleryStateTearOff();

/// @nodoc
mixin _$ComicGalleryState {
  bool get previousButtonVisible => throw _privateConstructorUsedError;
  bool get nextButtonVisible => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool previousButtonVisible, bool nextButtonVisible)
        setButtonVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool previousButtonVisible, bool nextButtonVisible)?
        setButtonVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetButtonVisibility value) setButtonVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetButtonVisibility value)? setButtonVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicGalleryStateCopyWith<ComicGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicGalleryStateCopyWith<$Res> {
  factory $ComicGalleryStateCopyWith(
          ComicGalleryState value, $Res Function(ComicGalleryState) then) =
      _$ComicGalleryStateCopyWithImpl<$Res>;
  $Res call({bool previousButtonVisible, bool nextButtonVisible});
}

/// @nodoc
class _$ComicGalleryStateCopyWithImpl<$Res>
    implements $ComicGalleryStateCopyWith<$Res> {
  _$ComicGalleryStateCopyWithImpl(this._value, this._then);

  final ComicGalleryState _value;
  // ignore: unused_field
  final $Res Function(ComicGalleryState) _then;

  @override
  $Res call({
    Object? previousButtonVisible = freezed,
    Object? nextButtonVisible = freezed,
  }) {
    return _then(_value.copyWith(
      previousButtonVisible: previousButtonVisible == freezed
          ? _value.previousButtonVisible
          : previousButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      nextButtonVisible: nextButtonVisible == freezed
          ? _value.nextButtonVisible
          : nextButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SetButtonVisibilityCopyWith<$Res>
    implements $ComicGalleryStateCopyWith<$Res> {
  factory $SetButtonVisibilityCopyWith(
          SetButtonVisibility value, $Res Function(SetButtonVisibility) then) =
      _$SetButtonVisibilityCopyWithImpl<$Res>;
  @override
  $Res call({bool previousButtonVisible, bool nextButtonVisible});
}

/// @nodoc
class _$SetButtonVisibilityCopyWithImpl<$Res>
    extends _$ComicGalleryStateCopyWithImpl<$Res>
    implements $SetButtonVisibilityCopyWith<$Res> {
  _$SetButtonVisibilityCopyWithImpl(
      SetButtonVisibility _value, $Res Function(SetButtonVisibility) _then)
      : super(_value, (v) => _then(v as SetButtonVisibility));

  @override
  SetButtonVisibility get _value => super._value as SetButtonVisibility;

  @override
  $Res call({
    Object? previousButtonVisible = freezed,
    Object? nextButtonVisible = freezed,
  }) {
    return _then(SetButtonVisibility(
      previousButtonVisible == freezed
          ? _value.previousButtonVisible
          : previousButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      nextButtonVisible == freezed
          ? _value.nextButtonVisible
          : nextButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetButtonVisibility implements SetButtonVisibility {
  const _$SetButtonVisibility(
      this.previousButtonVisible, this.nextButtonVisible);

  @override
  final bool previousButtonVisible;
  @override
  final bool nextButtonVisible;

  @override
  String toString() {
    return 'ComicGalleryState.setButtonVisibility(previousButtonVisible: $previousButtonVisible, nextButtonVisible: $nextButtonVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetButtonVisibility &&
            (identical(other.previousButtonVisible, previousButtonVisible) ||
                const DeepCollectionEquality().equals(
                    other.previousButtonVisible, previousButtonVisible)) &&
            (identical(other.nextButtonVisible, nextButtonVisible) ||
                const DeepCollectionEquality()
                    .equals(other.nextButtonVisible, nextButtonVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(previousButtonVisible) ^
      const DeepCollectionEquality().hash(nextButtonVisible);

  @JsonKey(ignore: true)
  @override
  $SetButtonVisibilityCopyWith<SetButtonVisibility> get copyWith =>
      _$SetButtonVisibilityCopyWithImpl<SetButtonVisibility>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool previousButtonVisible, bool nextButtonVisible)
        setButtonVisibility,
  }) {
    return setButtonVisibility(previousButtonVisible, nextButtonVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool previousButtonVisible, bool nextButtonVisible)?
        setButtonVisibility,
    required TResult orElse(),
  }) {
    if (setButtonVisibility != null) {
      return setButtonVisibility(previousButtonVisible, nextButtonVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetButtonVisibility value) setButtonVisibility,
  }) {
    return setButtonVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetButtonVisibility value)? setButtonVisibility,
    required TResult orElse(),
  }) {
    if (setButtonVisibility != null) {
      return setButtonVisibility(this);
    }
    return orElse();
  }
}

abstract class SetButtonVisibility implements ComicGalleryState {
  const factory SetButtonVisibility(
          bool previousButtonVisible, bool nextButtonVisible) =
      _$SetButtonVisibility;

  @override
  bool get previousButtonVisible => throw _privateConstructorUsedError;
  @override
  bool get nextButtonVisible => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SetButtonVisibilityCopyWith<SetButtonVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}
