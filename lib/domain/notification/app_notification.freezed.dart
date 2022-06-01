// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNotification {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get hasRead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res>;
  $Res call({String title, String body, bool hasRead});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  final AppNotification _value;
  // ignore: unused_field
  final $Res Function(AppNotification) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? hasRead = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      hasRead: hasRead == freezed
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppNotificationCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$_AppNotificationCopyWith(
          _$_AppNotification value, $Res Function(_$_AppNotification) then) =
      __$$_AppNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, bool hasRead});
}

/// @nodoc
class __$$_AppNotificationCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res>
    implements _$$_AppNotificationCopyWith<$Res> {
  __$$_AppNotificationCopyWithImpl(
      _$_AppNotification _value, $Res Function(_$_AppNotification) _then)
      : super(_value, (v) => _then(v as _$_AppNotification));

  @override
  _$_AppNotification get _value => super._value as _$_AppNotification;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? hasRead = freezed,
  }) {
    return _then(_$_AppNotification(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      hasRead: hasRead == freezed
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppNotification implements _AppNotification {
  const _$_AppNotification(
      {required this.title, required this.body, required this.hasRead});

  @override
  final String title;
  @override
  final String body;
  @override
  final bool hasRead;

  @override
  String toString() {
    return 'AppNotification(title: $title, body: $body, hasRead: $hasRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNotification &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.hasRead, hasRead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(hasRead));

  @JsonKey(ignore: true)
  @override
  _$$_AppNotificationCopyWith<_$_AppNotification> get copyWith =>
      __$$_AppNotificationCopyWithImpl<_$_AppNotification>(this, _$identity);
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final String title,
      required final String body,
      required final bool hasRead}) = _$_AppNotification;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  bool get hasRead => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppNotificationCopyWith<_$_AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
