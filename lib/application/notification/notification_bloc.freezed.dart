// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteMessage message) local,
    required TResult Function(RemoteMessage message) app,
    required TResult Function(String payload) received,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_App value) app,
    required TResult Function(_Received value) received,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$$_LocalCopyWith<$Res> {
  factory _$$_LocalCopyWith(_$_Local value, $Res Function(_$_Local) then) =
      __$$_LocalCopyWithImpl<$Res>;
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$_LocalCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res>
    implements _$$_LocalCopyWith<$Res> {
  __$$_LocalCopyWithImpl(_$_Local _value, $Res Function(_$_Local) _then)
      : super(_value, (v) => _then(v as _$_Local));

  @override
  _$_Local get _value => super._value as _$_Local;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Local(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_Local implements _Local {
  const _$_Local(this.message);

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationEvent.local(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Local &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_LocalCopyWith<_$_Local> get copyWith =>
      __$$_LocalCopyWithImpl<_$_Local>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteMessage message) local,
    required TResult Function(RemoteMessage message) app,
    required TResult Function(String payload) received,
    required TResult Function(String error) error,
  }) {
    return local(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
  }) {
    return local?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_App value) app,
    required TResult Function(_Received value) received,
    required TResult Function(_Error value) error,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local implements NotificationEvent {
  const factory _Local(final RemoteMessage message) = _$_Local;

  RemoteMessage get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LocalCopyWith<_$_Local> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppCopyWith<$Res> {
  factory _$$_AppCopyWith(_$_App value, $Res Function(_$_App) then) =
      __$$_AppCopyWithImpl<$Res>;
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$_AppCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res>
    implements _$$_AppCopyWith<$Res> {
  __$$_AppCopyWithImpl(_$_App _value, $Res Function(_$_App) _then)
      : super(_value, (v) => _then(v as _$_App));

  @override
  _$_App get _value => super._value as _$_App;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_App(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_App implements _App {
  const _$_App(this.message);

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationEvent.app(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_App &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AppCopyWith<_$_App> get copyWith =>
      __$$_AppCopyWithImpl<_$_App>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteMessage message) local,
    required TResult Function(RemoteMessage message) app,
    required TResult Function(String payload) received,
    required TResult Function(String error) error,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_App value) app,
    required TResult Function(_Received value) received,
    required TResult Function(_Error value) error,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _App implements NotificationEvent {
  const factory _App(final RemoteMessage message) = _$_App;

  RemoteMessage get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AppCopyWith<_$_App> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReceivedCopyWith<$Res> {
  factory _$$_ReceivedCopyWith(
          _$_Received value, $Res Function(_$_Received) then) =
      __$$_ReceivedCopyWithImpl<$Res>;
  $Res call({String payload});
}

/// @nodoc
class __$$_ReceivedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$$_ReceivedCopyWith<$Res> {
  __$$_ReceivedCopyWithImpl(
      _$_Received _value, $Res Function(_$_Received) _then)
      : super(_value, (v) => _then(v as _$_Received));

  @override
  _$_Received get _value => super._value as _$_Received;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$_Received(
      payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Received implements _Received {
  const _$_Received(this.payload);

  @override
  final String payload;

  @override
  String toString() {
    return 'NotificationEvent.received(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Received &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_ReceivedCopyWith<_$_Received> get copyWith =>
      __$$_ReceivedCopyWithImpl<_$_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteMessage message) local,
    required TResult Function(RemoteMessage message) app,
    required TResult Function(String payload) received,
    required TResult Function(String error) error,
  }) {
    return received(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
  }) {
    return received?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_App value) app,
    required TResult Function(_Received value) received,
    required TResult Function(_Error value) error,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements NotificationEvent {
  const factory _Received(final String payload) = _$_Received;

  String get payload => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ReceivedCopyWith<_$_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NotificationEvent.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteMessage message) local,
    required TResult Function(RemoteMessage message) app,
    required TResult Function(String payload) received,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteMessage message)? local,
    TResult Function(RemoteMessage message)? app,
    TResult Function(String payload)? received,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_App value) app,
    required TResult Function(_Received value) received,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_App value)? app,
    TResult Function(_Received value)? received,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotificationEvent {
  const factory _Error(final String error) = _$_Error;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  List<AppNotification> get notifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call({List<AppNotification> notifications});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<AppNotification>,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AppNotification> notifications});
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, (v) => _then(v as _$_NotificationState));

  @override
  _$_NotificationState get _value => super._value as _$_NotificationState;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_$_NotificationState(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<AppNotification>,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {required final List<AppNotification> notifications})
      : _notifications = notifications;

  final List<AppNotification> _notifications;
  @override
  List<AppNotification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
          {required final List<AppNotification> notifications}) =
      _$_NotificationState;

  @override
  List<AppNotification> get notifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
