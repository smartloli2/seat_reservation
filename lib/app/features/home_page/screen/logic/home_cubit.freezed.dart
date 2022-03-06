// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _ListLoaded listLoaded({required List<Office> offices}) {
    return _ListLoaded(
      offices: offices,
    );
  }

  _DetailsLoaded detailsLoaded({required Office office}) {
    return _DetailsLoaded(
      office: office,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Office> offices) listLoaded,
    required TResult Function(Office office) detailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ListLoaded value) listLoaded,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

@With<StateForBuilder>()
class _$_Loading with StateForBuilder implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Office> offices) listLoaded,
    required TResult Function(Office office) detailsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ListLoaded value) listLoaded,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState, StateForBuilder {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ListLoadedCopyWith<$Res> {
  factory _$ListLoadedCopyWith(
          _ListLoaded value, $Res Function(_ListLoaded) then) =
      __$ListLoadedCopyWithImpl<$Res>;
  $Res call({List<Office> offices});
}

/// @nodoc
class __$ListLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(
      _ListLoaded _value, $Res Function(_ListLoaded) _then)
      : super(_value, (v) => _then(v as _ListLoaded));

  @override
  _ListLoaded get _value => super._value as _ListLoaded;

  @override
  $Res call({
    Object? offices = freezed,
  }) {
    return _then(_ListLoaded(
      offices: offices == freezed
          ? _value.offices
          : offices // ignore: cast_nullable_to_non_nullable
              as List<Office>,
    ));
  }
}

/// @nodoc

@With<StateForBuilder>()
class _$_ListLoaded with StateForBuilder implements _ListLoaded {
  const _$_ListLoaded({required this.offices});

  @override
  final List<Office> offices;

  @override
  String toString() {
    return 'HomeState.listLoaded(offices: $offices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListLoaded &&
            const DeepCollectionEquality().equals(other.offices, offices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offices));

  @JsonKey(ignore: true)
  @override
  _$ListLoadedCopyWith<_ListLoaded> get copyWith =>
      __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Office> offices) listLoaded,
    required TResult Function(Office office) detailsLoaded,
  }) {
    return listLoaded(offices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
  }) {
    return listLoaded?.call(offices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(offices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ListLoaded value) listLoaded,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
  }) {
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
  }) {
    return listLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class _ListLoaded implements HomeState, StateForBuilder {
  const factory _ListLoaded({required List<Office> offices}) = _$_ListLoaded;

  List<Office> get offices;
  @JsonKey(ignore: true)
  _$ListLoadedCopyWith<_ListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailsLoadedCopyWith<$Res> {
  factory _$DetailsLoadedCopyWith(
          _DetailsLoaded value, $Res Function(_DetailsLoaded) then) =
      __$DetailsLoadedCopyWithImpl<$Res>;
  $Res call({Office office});
}

/// @nodoc
class __$DetailsLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$DetailsLoadedCopyWith<$Res> {
  __$DetailsLoadedCopyWithImpl(
      _DetailsLoaded _value, $Res Function(_DetailsLoaded) _then)
      : super(_value, (v) => _then(v as _DetailsLoaded));

  @override
  _DetailsLoaded get _value => super._value as _DetailsLoaded;

  @override
  $Res call({
    Object? office = freezed,
  }) {
    return _then(_DetailsLoaded(
      office: office == freezed
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as Office,
    ));
  }
}

/// @nodoc

@With<StateForBuilder>()
class _$_DetailsLoaded with StateForBuilder implements _DetailsLoaded {
  const _$_DetailsLoaded({required this.office});

  @override
  final Office office;

  @override
  String toString() {
    return 'HomeState.detailsLoaded(office: $office)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailsLoaded &&
            const DeepCollectionEquality().equals(other.office, office));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(office));

  @JsonKey(ignore: true)
  @override
  _$DetailsLoadedCopyWith<_DetailsLoaded> get copyWith =>
      __$DetailsLoadedCopyWithImpl<_DetailsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Office> offices) listLoaded,
    required TResult Function(Office office) detailsLoaded,
  }) {
    return detailsLoaded(office);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
  }) {
    return detailsLoaded?.call(office);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Office> offices)? listLoaded,
    TResult Function(Office office)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(office);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ListLoaded value) listLoaded,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
  }) {
    return detailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
  }) {
    return detailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoaded implements HomeState, StateForBuilder {
  const factory _DetailsLoaded({required Office office}) = _$_DetailsLoaded;

  Office get office;
  @JsonKey(ignore: true)
  _$DetailsLoadedCopyWith<_DetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
