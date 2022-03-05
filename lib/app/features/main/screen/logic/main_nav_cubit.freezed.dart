// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainNavStateTearOff {
  const _$MainNavStateTearOff();

  _NewIndex newIndex({required int index}) {
    return _NewIndex(
      index: index,
    );
  }
}

/// @nodoc
const $MainNavState = _$MainNavStateTearOff();

/// @nodoc
mixin _$MainNavState {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) newIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? newIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? newIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewIndex value) newIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewIndex value)? newIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewIndex value)? newIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavStateCopyWith<MainNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavStateCopyWith<$Res> {
  factory $MainNavStateCopyWith(
          MainNavState value, $Res Function(MainNavState) then) =
      _$MainNavStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$MainNavStateCopyWithImpl<$Res> implements $MainNavStateCopyWith<$Res> {
  _$MainNavStateCopyWithImpl(this._value, this._then);

  final MainNavState _value;
  // ignore: unused_field
  final $Res Function(MainNavState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NewIndexCopyWith<$Res> implements $MainNavStateCopyWith<$Res> {
  factory _$NewIndexCopyWith(_NewIndex value, $Res Function(_NewIndex) then) =
      __$NewIndexCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$NewIndexCopyWithImpl<$Res> extends _$MainNavStateCopyWithImpl<$Res>
    implements _$NewIndexCopyWith<$Res> {
  __$NewIndexCopyWithImpl(_NewIndex _value, $Res Function(_NewIndex) _then)
      : super(_value, (v) => _then(v as _NewIndex));

  @override
  _NewIndex get _value => super._value as _NewIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_NewIndex(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@With<StateForBuilder>()
class _$_NewIndex with StateForBuilder implements _NewIndex {
  const _$_NewIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MainNavState.newIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$NewIndexCopyWith<_NewIndex> get copyWith =>
      __$NewIndexCopyWithImpl<_NewIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) newIndex,
  }) {
    return newIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? newIndex,
  }) {
    return newIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? newIndex,
    required TResult orElse(),
  }) {
    if (newIndex != null) {
      return newIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewIndex value) newIndex,
  }) {
    return newIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewIndex value)? newIndex,
  }) {
    return newIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewIndex value)? newIndex,
    required TResult orElse(),
  }) {
    if (newIndex != null) {
      return newIndex(this);
    }
    return orElse();
  }
}

abstract class _NewIndex implements MainNavState, StateForBuilder {
  const factory _NewIndex({required int index}) = _$_NewIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$NewIndexCopyWith<_NewIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
