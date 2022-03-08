// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'office_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfficeDetailsStateTearOff {
  const _$OfficeDetailsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required double officeWidth,
      required double officeHeight,
      required OfficeSize officeSize,
      required List<Workplace?> workplaces,
      required int? selectedPlaceIndex}) {
    return _Loaded(
      officeWidth: officeWidth,
      officeHeight: officeHeight,
      officeSize: officeSize,
      workplaces: workplaces,
      selectedPlaceIndex: selectedPlaceIndex,
    );
  }
}

/// @nodoc
const $OfficeDetailsState = _$OfficeDetailsStateTearOff();

/// @nodoc
mixin _$OfficeDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficeDetailsStateCopyWith<$Res> {
  factory $OfficeDetailsStateCopyWith(
          OfficeDetailsState value, $Res Function(OfficeDetailsState) then) =
      _$OfficeDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfficeDetailsStateCopyWithImpl<$Res>
    implements $OfficeDetailsStateCopyWith<$Res> {
  _$OfficeDetailsStateCopyWithImpl(this._value, this._then);

  final OfficeDetailsState _value;
  // ignore: unused_field
  final $Res Function(OfficeDetailsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$OfficeDetailsStateCopyWithImpl<$Res>
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
    return 'OfficeDetailsState.loading()';
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
    required TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
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
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OfficeDetailsState, StateForBuilder {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {double officeWidth,
      double officeHeight,
      OfficeSize officeSize,
      List<Workplace?> workplaces,
      int? selectedPlaceIndex});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$OfficeDetailsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? officeWidth = freezed,
    Object? officeHeight = freezed,
    Object? officeSize = freezed,
    Object? workplaces = freezed,
    Object? selectedPlaceIndex = freezed,
  }) {
    return _then(_Loaded(
      officeWidth: officeWidth == freezed
          ? _value.officeWidth
          : officeWidth // ignore: cast_nullable_to_non_nullable
              as double,
      officeHeight: officeHeight == freezed
          ? _value.officeHeight
          : officeHeight // ignore: cast_nullable_to_non_nullable
              as double,
      officeSize: officeSize == freezed
          ? _value.officeSize
          : officeSize // ignore: cast_nullable_to_non_nullable
              as OfficeSize,
      workplaces: workplaces == freezed
          ? _value.workplaces
          : workplaces // ignore: cast_nullable_to_non_nullable
              as List<Workplace?>,
      selectedPlaceIndex: selectedPlaceIndex == freezed
          ? _value.selectedPlaceIndex
          : selectedPlaceIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@With<StateForBuilder>()
class _$_Loaded with StateForBuilder implements _Loaded {
  const _$_Loaded(
      {required this.officeWidth,
      required this.officeHeight,
      required this.officeSize,
      required this.workplaces,
      required this.selectedPlaceIndex});

  @override
  final double officeWidth;
  @override
  final double officeHeight;
  @override
  final OfficeSize officeSize;
  @override
  final List<Workplace?> workplaces;
  @override
  final int? selectedPlaceIndex;

  @override
  String toString() {
    return 'OfficeDetailsState.loaded(officeWidth: $officeWidth, officeHeight: $officeHeight, officeSize: $officeSize, workplaces: $workplaces, selectedPlaceIndex: $selectedPlaceIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.officeWidth, officeWidth) &&
            const DeepCollectionEquality()
                .equals(other.officeHeight, officeHeight) &&
            const DeepCollectionEquality()
                .equals(other.officeSize, officeSize) &&
            const DeepCollectionEquality()
                .equals(other.workplaces, workplaces) &&
            const DeepCollectionEquality()
                .equals(other.selectedPlaceIndex, selectedPlaceIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(officeWidth),
      const DeepCollectionEquality().hash(officeHeight),
      const DeepCollectionEquality().hash(officeSize),
      const DeepCollectionEquality().hash(workplaces),
      const DeepCollectionEquality().hash(selectedPlaceIndex));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)
        loaded,
  }) {
    return loaded(
        officeWidth, officeHeight, officeSize, workplaces, selectedPlaceIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
  }) {
    return loaded?.call(
        officeWidth, officeHeight, officeSize, workplaces, selectedPlaceIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            double officeWidth,
            double officeHeight,
            OfficeSize officeSize,
            List<Workplace?> workplaces,
            int? selectedPlaceIndex)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(officeWidth, officeHeight, officeSize, workplaces,
          selectedPlaceIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OfficeDetailsState, StateForBuilder {
  const factory _Loaded(
      {required double officeWidth,
      required double officeHeight,
      required OfficeSize officeSize,
      required List<Workplace?> workplaces,
      required int? selectedPlaceIndex}) = _$_Loaded;

  double get officeWidth;
  double get officeHeight;
  OfficeSize get officeSize;
  List<Workplace?> get workplaces;
  int? get selectedPlaceIndex;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
