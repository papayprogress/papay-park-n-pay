// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_point_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingPointWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)
        parkingPointReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ParkingPointReceived value) parkingPointReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPointWatcherEventCopyWith<$Res> {
  factory $ParkingPointWatcherEventCopyWith(ParkingPointWatcherEvent value,
          $Res Function(ParkingPointWatcherEvent) then) =
      _$ParkingPointWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingPointWatcherEventCopyWithImpl<$Res>
    implements $ParkingPointWatcherEventCopyWith<$Res> {
  _$ParkingPointWatcherEventCopyWithImpl(this._value, this._then);

  final ParkingPointWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ParkingPointWatcherEvent) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$ParkingPointWatcherEventCopyWithImpl<$Res>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$_WatchAllStarted));

  @override
  _$_WatchAllStarted get _value => super._value as _$_WatchAllStarted;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_WatchAllStarted(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ParkingPointWatcherEvent.watchAllStarted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStarted &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      __$$_WatchAllStartedCopyWithImpl<_$_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)
        parkingPointReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ParkingPointReceived value) parkingPointReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ParkingPointWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParkingPointReceivedCopyWith<$Res> {
  factory _$$_ParkingPointReceivedCopyWith(_$_ParkingPointReceived value,
          $Res Function(_$_ParkingPointReceived) then) =
      __$$_ParkingPointReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ParkingPointFailure, List<ParkingPoint>> failureOrParkingPoint});
}

/// @nodoc
class __$$_ParkingPointReceivedCopyWithImpl<$Res>
    extends _$ParkingPointWatcherEventCopyWithImpl<$Res>
    implements _$$_ParkingPointReceivedCopyWith<$Res> {
  __$$_ParkingPointReceivedCopyWithImpl(_$_ParkingPointReceived _value,
      $Res Function(_$_ParkingPointReceived) _then)
      : super(_value, (v) => _then(v as _$_ParkingPointReceived));

  @override
  _$_ParkingPointReceived get _value => super._value as _$_ParkingPointReceived;

  @override
  $Res call({
    Object? failureOrParkingPoint = freezed,
  }) {
    return _then(_$_ParkingPointReceived(
      failureOrParkingPoint == freezed
          ? _value.failureOrParkingPoint
          : failureOrParkingPoint // ignore: cast_nullable_to_non_nullable
              as Either<ParkingPointFailure, List<ParkingPoint>>,
    ));
  }
}

/// @nodoc

class _$_ParkingPointReceived implements _ParkingPointReceived {
  const _$_ParkingPointReceived(this.failureOrParkingPoint);

  @override
  final Either<ParkingPointFailure, List<ParkingPoint>> failureOrParkingPoint;

  @override
  String toString() {
    return 'ParkingPointWatcherEvent.parkingPointReceived(failureOrParkingPoint: $failureOrParkingPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingPointReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrParkingPoint, failureOrParkingPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrParkingPoint));

  @JsonKey(ignore: true)
  @override
  _$$_ParkingPointReceivedCopyWith<_$_ParkingPointReceived> get copyWith =>
      __$$_ParkingPointReceivedCopyWithImpl<_$_ParkingPointReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)
        parkingPointReceived,
  }) {
    return parkingPointReceived(failureOrParkingPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
  }) {
    return parkingPointReceived?.call(failureOrParkingPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ParkingPointFailure, List<ParkingPoint>>
                failureOrParkingPoint)?
        parkingPointReceived,
    required TResult orElse(),
  }) {
    if (parkingPointReceived != null) {
      return parkingPointReceived(failureOrParkingPoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ParkingPointReceived value) parkingPointReceived,
  }) {
    return parkingPointReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
  }) {
    return parkingPointReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ParkingPointReceived value)? parkingPointReceived,
    required TResult orElse(),
  }) {
    if (parkingPointReceived != null) {
      return parkingPointReceived(this);
    }
    return orElse();
  }
}

abstract class _ParkingPointReceived implements ParkingPointWatcherEvent {
  const factory _ParkingPointReceived(
      final Either<ParkingPointFailure, List<ParkingPoint>>
          failureOrParkingPoint) = _$_ParkingPointReceived;

  Either<ParkingPointFailure, List<ParkingPoint>> get failureOrParkingPoint =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ParkingPointReceivedCopyWith<_$_ParkingPointReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParkingPointWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ParkingPoint> parkingPoint) loadSuccess,
    required TResult Function(ParkingPointFailure parkingPointFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPointWatcherStateCopyWith<$Res> {
  factory $ParkingPointWatcherStateCopyWith(ParkingPointWatcherState value,
          $Res Function(ParkingPointWatcherState) then) =
      _$ParkingPointWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingPointWatcherStateCopyWithImpl<$Res>
    implements $ParkingPointWatcherStateCopyWith<$Res> {
  _$ParkingPointWatcherStateCopyWithImpl(this._value, this._then);

  final ParkingPointWatcherState _value;
  // ignore: unused_field
  final $Res Function(ParkingPointWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ParkingPointWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ParkingPointWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ParkingPoint> parkingPoint) loadSuccess,
    required TResult Function(ParkingPointFailure parkingPointFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ParkingPointWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ParkingPointWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ParkingPointWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ParkingPoint> parkingPoint) loadSuccess,
    required TResult Function(ParkingPointFailure parkingPointFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ParkingPointWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ParkingPoint> parkingPoint});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ParkingPointWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? parkingPoint = freezed,
  }) {
    return _then(_$_LoadSuccess(
      parkingPoint == freezed
          ? _value._parkingPoint
          : parkingPoint // ignore: cast_nullable_to_non_nullable
              as List<ParkingPoint>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<ParkingPoint> parkingPoint)
      : _parkingPoint = parkingPoint;

  final List<ParkingPoint> _parkingPoint;
  @override
  List<ParkingPoint> get parkingPoint {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parkingPoint);
  }

  @override
  String toString() {
    return 'ParkingPointWatcherState.loadSuccess(parkingPoint: $parkingPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._parkingPoint, _parkingPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_parkingPoint));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ParkingPoint> parkingPoint) loadSuccess,
    required TResult Function(ParkingPointFailure parkingPointFailure)
        loadFailure,
  }) {
    return loadSuccess(parkingPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
  }) {
    return loadSuccess?.call(parkingPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(parkingPoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ParkingPointWatcherState {
  const factory _LoadSuccess(final List<ParkingPoint> parkingPoint) =
      _$_LoadSuccess;

  List<ParkingPoint> get parkingPoint => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({ParkingPointFailure parkingPointFailure});

  $ParkingPointFailureCopyWith<$Res> get parkingPointFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ParkingPointWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? parkingPointFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      parkingPointFailure == freezed
          ? _value.parkingPointFailure
          : parkingPointFailure // ignore: cast_nullable_to_non_nullable
              as ParkingPointFailure,
    ));
  }

  @override
  $ParkingPointFailureCopyWith<$Res> get parkingPointFailure {
    return $ParkingPointFailureCopyWith<$Res>(_value.parkingPointFailure,
        (value) {
      return _then(_value.copyWith(parkingPointFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.parkingPointFailure);

  @override
  final ParkingPointFailure parkingPointFailure;

  @override
  String toString() {
    return 'ParkingPointWatcherState.loadFailure(parkingPointFailure: $parkingPointFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.parkingPointFailure, parkingPointFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(parkingPointFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ParkingPoint> parkingPoint) loadSuccess,
    required TResult Function(ParkingPointFailure parkingPointFailure)
        loadFailure,
  }) {
    return loadFailure(parkingPointFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
  }) {
    return loadFailure?.call(parkingPointFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ParkingPoint> parkingPoint)? loadSuccess,
    TResult Function(ParkingPointFailure parkingPointFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(parkingPointFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ParkingPointWatcherState {
  const factory _LoadFailure(final ParkingPointFailure parkingPointFailure) =
      _$_LoadFailure;

  ParkingPointFailure get parkingPointFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
