// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<GalleryFailure, List<Gallery>> failureOrGallery)
        galleryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GalleryReceived value) galleryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryWatcherEventCopyWith<$Res> {
  factory $GalleryWatcherEventCopyWith(
          GalleryWatcherEvent value, $Res Function(GalleryWatcherEvent) then) =
      _$GalleryWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GalleryWatcherEventCopyWithImpl<$Res>
    implements $GalleryWatcherEventCopyWith<$Res> {
  _$GalleryWatcherEventCopyWithImpl(this._value, this._then);

  final GalleryWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GalleryWatcherEvent) _then;
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
    extends _$GalleryWatcherEventCopyWithImpl<$Res>
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
    return 'GalleryWatcherEvent.watchAllStarted(id: $id)';
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
            Either<GalleryFailure, List<Gallery>> failureOrGallery)
        galleryReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
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
    required TResult Function(_GalleryReceived value) galleryReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements GalleryWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GalleryReceivedCopyWith<$Res> {
  factory _$$_GalleryReceivedCopyWith(
          _$_GalleryReceived value, $Res Function(_$_GalleryReceived) then) =
      __$$_GalleryReceivedCopyWithImpl<$Res>;
  $Res call({Either<GalleryFailure, List<Gallery>> failureOrGallery});
}

/// @nodoc
class __$$_GalleryReceivedCopyWithImpl<$Res>
    extends _$GalleryWatcherEventCopyWithImpl<$Res>
    implements _$$_GalleryReceivedCopyWith<$Res> {
  __$$_GalleryReceivedCopyWithImpl(
      _$_GalleryReceived _value, $Res Function(_$_GalleryReceived) _then)
      : super(_value, (v) => _then(v as _$_GalleryReceived));

  @override
  _$_GalleryReceived get _value => super._value as _$_GalleryReceived;

  @override
  $Res call({
    Object? failureOrGallery = freezed,
  }) {
    return _then(_$_GalleryReceived(
      failureOrGallery == freezed
          ? _value.failureOrGallery
          : failureOrGallery // ignore: cast_nullable_to_non_nullable
              as Either<GalleryFailure, List<Gallery>>,
    ));
  }
}

/// @nodoc

class _$_GalleryReceived implements _GalleryReceived {
  const _$_GalleryReceived(this.failureOrGallery);

  @override
  final Either<GalleryFailure, List<Gallery>> failureOrGallery;

  @override
  String toString() {
    return 'GalleryWatcherEvent.galleryReceived(failureOrGallery: $failureOrGallery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrGallery, failureOrGallery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrGallery));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryReceivedCopyWith<_$_GalleryReceived> get copyWith =>
      __$$_GalleryReceivedCopyWithImpl<_$_GalleryReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<GalleryFailure, List<Gallery>> failureOrGallery)
        galleryReceived,
  }) {
    return galleryReceived(failureOrGallery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
  }) {
    return galleryReceived?.call(failureOrGallery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(Either<GalleryFailure, List<Gallery>> failureOrGallery)?
        galleryReceived,
    required TResult orElse(),
  }) {
    if (galleryReceived != null) {
      return galleryReceived(failureOrGallery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GalleryReceived value) galleryReceived,
  }) {
    return galleryReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
  }) {
    return galleryReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GalleryReceived value)? galleryReceived,
    required TResult orElse(),
  }) {
    if (galleryReceived != null) {
      return galleryReceived(this);
    }
    return orElse();
  }
}

abstract class _GalleryReceived implements GalleryWatcherEvent {
  const factory _GalleryReceived(
          final Either<GalleryFailure, List<Gallery>> failureOrGallery) =
      _$_GalleryReceived;

  Either<GalleryFailure, List<Gallery>> get failureOrGallery =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GalleryReceivedCopyWith<_$_GalleryReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Gallery> galleries) loadSuccess,
    required TResult Function(GalleryFailure galleryFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
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
abstract class $GalleryWatcherStateCopyWith<$Res> {
  factory $GalleryWatcherStateCopyWith(
          GalleryWatcherState value, $Res Function(GalleryWatcherState) then) =
      _$GalleryWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GalleryWatcherStateCopyWithImpl<$Res>
    implements $GalleryWatcherStateCopyWith<$Res> {
  _$GalleryWatcherStateCopyWithImpl(this._value, this._then);

  final GalleryWatcherState _value;
  // ignore: unused_field
  final $Res Function(GalleryWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GalleryWatcherStateCopyWithImpl<$Res>
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
    return 'GalleryWatcherState.initial()';
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
    required TResult Function(List<Gallery> galleries) loadSuccess,
    required TResult Function(GalleryFailure galleryFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
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

abstract class _Initial implements GalleryWatcherState {
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
    extends _$GalleryWatcherStateCopyWithImpl<$Res>
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
    return 'GalleryWatcherState.loadInProgress()';
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
    required TResult Function(List<Gallery> galleries) loadSuccess,
    required TResult Function(GalleryFailure galleryFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
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

abstract class _LoadInProgress implements GalleryWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Gallery> galleries});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$GalleryWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? galleries = freezed,
  }) {
    return _then(_$_LoadSuccess(
      galleries == freezed
          ? _value._galleries
          : galleries // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<Gallery> galleries) : _galleries = galleries;

  final List<Gallery> _galleries;
  @override
  List<Gallery> get galleries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleries);
  }

  @override
  String toString() {
    return 'GalleryWatcherState.loadSuccess(galleries: $galleries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._galleries, _galleries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_galleries));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Gallery> galleries) loadSuccess,
    required TResult Function(GalleryFailure galleryFailure) loadFailure,
  }) {
    return loadSuccess(galleries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
  }) {
    return loadSuccess?.call(galleries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(galleries);
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

abstract class _LoadSuccess implements GalleryWatcherState {
  const factory _LoadSuccess(final List<Gallery> galleries) = _$_LoadSuccess;

  List<Gallery> get galleries => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({GalleryFailure galleryFailure});

  $GalleryFailureCopyWith<$Res> get galleryFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$GalleryWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? galleryFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      galleryFailure == freezed
          ? _value.galleryFailure
          : galleryFailure // ignore: cast_nullable_to_non_nullable
              as GalleryFailure,
    ));
  }

  @override
  $GalleryFailureCopyWith<$Res> get galleryFailure {
    return $GalleryFailureCopyWith<$Res>(_value.galleryFailure, (value) {
      return _then(_value.copyWith(galleryFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.galleryFailure);

  @override
  final GalleryFailure galleryFailure;

  @override
  String toString() {
    return 'GalleryWatcherState.loadFailure(galleryFailure: $galleryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.galleryFailure, galleryFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(galleryFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Gallery> galleries) loadSuccess,
    required TResult Function(GalleryFailure galleryFailure) loadFailure,
  }) {
    return loadFailure(galleryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
  }) {
    return loadFailure?.call(galleryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Gallery> galleries)? loadSuccess,
    TResult Function(GalleryFailure galleryFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(galleryFailure);
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

abstract class _LoadFailure implements GalleryWatcherState {
  const factory _LoadFailure(final GalleryFailure galleryFailure) =
      _$_LoadFailure;

  GalleryFailure get galleryFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
