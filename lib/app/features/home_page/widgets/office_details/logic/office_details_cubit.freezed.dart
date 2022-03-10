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
      required int? selectedPlaceIndex,
      required bool isButtonLoading}) {
    return _Loaded(
      officeWidth: officeWidth,
      officeHeight: officeHeight,
      officeSize: officeSize,
      workplaces: workplaces,
      selectedPlaceIndex: selectedPlaceIndex,
      isButtonLoading: isButtonLoading,
    );
  }

  _ToHistory toHistory() {
    return const _ToHistory();
  }

  _ShowSuccessAlert showSuccessAlert() {
    return const _ShowSuccessAlert();
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
            int? selectedPlaceIndex,
            bool isButtonLoading)
        loaded,
    required TResult Function() toHistory,
    required TResult Function() showSuccessAlert,
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ToHistory value) toHistory,
    required TResult Function(_ShowSuccessAlert value) showSuccessAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
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
            int? selectedPlaceIndex,
            bool isButtonLoading)
        loaded,
    required TResult Function() toHistory,
    required TResult Function() showSuccessAlert,
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
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
    required TResult Function(_ToHistory value) toHistory,
    required TResult Function(_ShowSuccessAlert value) showSuccessAlert,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
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
      int? selectedPlaceIndex,
      bool isButtonLoading});
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
    Object? isButtonLoading = freezed,
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
      isButtonLoading: isButtonLoading == freezed
          ? _value.isButtonLoading
          : isButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.selectedPlaceIndex,
      required this.isButtonLoading});

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
  final bool isButtonLoading;

  @override
  String toString() {
    return 'OfficeDetailsState.loaded(officeWidth: $officeWidth, officeHeight: $officeHeight, officeSize: $officeSize, workplaces: $workplaces, selectedPlaceIndex: $selectedPlaceIndex, isButtonLoading: $isButtonLoading)';
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
                .equals(other.selectedPlaceIndex, selectedPlaceIndex) &&
            const DeepCollectionEquality()
                .equals(other.isButtonLoading, isButtonLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(officeWidth),
      const DeepCollectionEquality().hash(officeHeight),
      const DeepCollectionEquality().hash(officeSize),
      const DeepCollectionEquality().hash(workplaces),
      const DeepCollectionEquality().hash(selectedPlaceIndex),
      const DeepCollectionEquality().hash(isButtonLoading));

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
            int? selectedPlaceIndex,
            bool isButtonLoading)
        loaded,
    required TResult Function() toHistory,
    required TResult Function() showSuccessAlert,
  }) {
    return loaded(officeWidth, officeHeight, officeSize, workplaces,
        selectedPlaceIndex, isButtonLoading);
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
  }) {
    return loaded?.call(officeWidth, officeHeight, officeSize, workplaces,
        selectedPlaceIndex, isButtonLoading);
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(officeWidth, officeHeight, officeSize, workplaces,
          selectedPlaceIndex, isButtonLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ToHistory value) toHistory,
    required TResult Function(_ShowSuccessAlert value) showSuccessAlert,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
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
      required int? selectedPlaceIndex,
      required bool isButtonLoading}) = _$_Loaded;

  double get officeWidth;
  double get officeHeight;
  OfficeSize get officeSize;
  List<Workplace?> get workplaces;
  int? get selectedPlaceIndex;
  bool get isButtonLoading;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToHistoryCopyWith<$Res> {
  factory _$ToHistoryCopyWith(
          _ToHistory value, $Res Function(_ToHistory) then) =
      __$ToHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToHistoryCopyWithImpl<$Res>
    extends _$OfficeDetailsStateCopyWithImpl<$Res>
    implements _$ToHistoryCopyWith<$Res> {
  __$ToHistoryCopyWithImpl(_ToHistory _value, $Res Function(_ToHistory) _then)
      : super(_value, (v) => _then(v as _ToHistory));

  @override
  _ToHistory get _value => super._value as _ToHistory;
}

/// @nodoc

@With<StateForListener>()
class _$_ToHistory with StateForListener implements _ToHistory {
  const _$_ToHistory();

  @override
  String toString() {
    return 'OfficeDetailsState.toHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToHistory);
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
            int? selectedPlaceIndex,
            bool isButtonLoading)
        loaded,
    required TResult Function() toHistory,
    required TResult Function() showSuccessAlert,
  }) {
    return toHistory();
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
  }) {
    return toHistory?.call();
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
    required TResult orElse(),
  }) {
    if (toHistory != null) {
      return toHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ToHistory value) toHistory,
    required TResult Function(_ShowSuccessAlert value) showSuccessAlert,
  }) {
    return toHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
  }) {
    return toHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
    required TResult orElse(),
  }) {
    if (toHistory != null) {
      return toHistory(this);
    }
    return orElse();
  }
}

abstract class _ToHistory implements OfficeDetailsState, StateForListener {
  const factory _ToHistory() = _$_ToHistory;
}

/// @nodoc
abstract class _$ShowSuccessAlertCopyWith<$Res> {
  factory _$ShowSuccessAlertCopyWith(
          _ShowSuccessAlert value, $Res Function(_ShowSuccessAlert) then) =
      __$ShowSuccessAlertCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSuccessAlertCopyWithImpl<$Res>
    extends _$OfficeDetailsStateCopyWithImpl<$Res>
    implements _$ShowSuccessAlertCopyWith<$Res> {
  __$ShowSuccessAlertCopyWithImpl(
      _ShowSuccessAlert _value, $Res Function(_ShowSuccessAlert) _then)
      : super(_value, (v) => _then(v as _ShowSuccessAlert));

  @override
  _ShowSuccessAlert get _value => super._value as _ShowSuccessAlert;
}

/// @nodoc

@With<StateForListener>()
class _$_ShowSuccessAlert with StateForListener implements _ShowSuccessAlert {
  const _$_ShowSuccessAlert();

  @override
  String toString() {
    return 'OfficeDetailsState.showSuccessAlert()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowSuccessAlert);
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
            int? selectedPlaceIndex,
            bool isButtonLoading)
        loaded,
    required TResult Function() toHistory,
    required TResult Function() showSuccessAlert,
  }) {
    return showSuccessAlert();
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
  }) {
    return showSuccessAlert?.call();
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
            int? selectedPlaceIndex,
            bool isButtonLoading)?
        loaded,
    TResult Function()? toHistory,
    TResult Function()? showSuccessAlert,
    required TResult orElse(),
  }) {
    if (showSuccessAlert != null) {
      return showSuccessAlert();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ToHistory value) toHistory,
    required TResult Function(_ShowSuccessAlert value) showSuccessAlert,
  }) {
    return showSuccessAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
  }) {
    return showSuccessAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ToHistory value)? toHistory,
    TResult Function(_ShowSuccessAlert value)? showSuccessAlert,
    required TResult orElse(),
  }) {
    if (showSuccessAlert != null) {
      return showSuccessAlert(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccessAlert
    implements OfficeDetailsState, StateForListener {
  const factory _ShowSuccessAlert() = _$_ShowSuccessAlert;
}
