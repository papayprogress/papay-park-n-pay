// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileFormEventCopyWith<$Res> {
  factory $UserProfileFormEventCopyWith(UserProfileFormEvent value,
          $Res Function(UserProfileFormEvent) then) =
      _$UserProfileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileFormEventCopyWithImpl<$Res>
    implements $UserProfileFormEventCopyWith<$Res> {
  _$UserProfileFormEventCopyWithImpl(this._value, this._then);

  final UserProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileFormEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? appUser = freezed,
  }) {
    return _then(_$_Started(
      appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'UserProfileFormEvent.started(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appUser));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return started(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return started?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserProfileFormEvent {
  const factory _Started(final AppUser appUser) = _$_Started;

  AppUser get appUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements UserProfileFormEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$_PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements UserProfileFormEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordConfirmationChangedCopyWith<$Res> {
  factory _$$_PasswordConfirmationChangedCopyWith(
          _$_PasswordConfirmationChanged value,
          $Res Function(_$_PasswordConfirmationChanged) then) =
      __$$_PasswordConfirmationChangedCopyWithImpl<$Res>;
  $Res call({String passwordConfirmationStr});
}

/// @nodoc
class __$$_PasswordConfirmationChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_PasswordConfirmationChangedCopyWith<$Res> {
  __$$_PasswordConfirmationChangedCopyWithImpl(
      _$_PasswordConfirmationChanged _value,
      $Res Function(_$_PasswordConfirmationChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordConfirmationChanged));

  @override
  _$_PasswordConfirmationChanged get _value =>
      super._value as _$_PasswordConfirmationChanged;

  @override
  $Res call({
    Object? passwordConfirmationStr = freezed,
  }) {
    return _then(_$_PasswordConfirmationChanged(
      passwordConfirmationStr == freezed
          ? _value.passwordConfirmationStr
          : passwordConfirmationStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordConfirmationChanged implements _PasswordConfirmationChanged {
  const _$_PasswordConfirmationChanged(this.passwordConfirmationStr);

  @override
  final String passwordConfirmationStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.passwordConfirmationChanged(passwordConfirmationStr: $passwordConfirmationStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordConfirmationChanged &&
            const DeepCollectionEquality().equals(
                other.passwordConfirmationStr, passwordConfirmationStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(passwordConfirmationStr));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordConfirmationChangedCopyWith<_$_PasswordConfirmationChanged>
      get copyWith => __$$_PasswordConfirmationChangedCopyWithImpl<
          _$_PasswordConfirmationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return passwordConfirmationChanged(passwordConfirmationStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return passwordConfirmationChanged?.call(passwordConfirmationStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(passwordConfirmationStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return passwordConfirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return passwordConfirmationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmationChanged implements UserProfileFormEvent {
  const factory _PasswordConfirmationChanged(
      final String passwordConfirmationStr) = _$_PasswordConfirmationChanged;

  String get passwordConfirmationStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PasswordConfirmationChangedCopyWith<_$_PasswordConfirmationChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneChangedCopyWith<$Res> {
  factory _$$_PhoneChangedCopyWith(
          _$_PhoneChanged value, $Res Function(_$_PhoneChanged) then) =
      __$$_PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$$_PhoneChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_PhoneChangedCopyWith<$Res> {
  __$$_PhoneChangedCopyWithImpl(
      _$_PhoneChanged _value, $Res Function(_$_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _$_PhoneChanged));

  @override
  _$_PhoneChanged get _value => super._value as _$_PhoneChanged;

  @override
  $Res call({
    Object? phoneStr = freezed,
  }) {
    return _then(_$_PhoneChanged(
      phoneStr == freezed
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChanged &&
            const DeepCollectionEquality().equals(other.phoneStr, phoneStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phoneStr));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      __$$_PhoneChangedCopyWithImpl<_$_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return phoneChanged?.call(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements UserProfileFormEvent {
  const factory _PhoneChanged(final String phoneStr) = _$_PhoneChanged;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressChangedCopyWith<$Res> {
  factory _$$_AddressChangedCopyWith(
          _$_AddressChanged value, $Res Function(_$_AddressChanged) then) =
      __$$_AddressChangedCopyWithImpl<$Res>;
  $Res call({String addressStr});
}

/// @nodoc
class __$$_AddressChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_AddressChangedCopyWith<$Res> {
  __$$_AddressChangedCopyWithImpl(
      _$_AddressChanged _value, $Res Function(_$_AddressChanged) _then)
      : super(_value, (v) => _then(v as _$_AddressChanged));

  @override
  _$_AddressChanged get _value => super._value as _$_AddressChanged;

  @override
  $Res call({
    Object? addressStr = freezed,
  }) {
    return _then(_$_AddressChanged(
      addressStr == freezed
          ? _value.addressStr
          : addressStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged(this.addressStr);

  @override
  final String addressStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.addressChanged(addressStr: $addressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressChanged &&
            const DeepCollectionEquality()
                .equals(other.addressStr, addressStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(addressStr));

  @JsonKey(ignore: true)
  @override
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      __$$_AddressChangedCopyWithImpl<_$_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return addressChanged(addressStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return addressChanged?.call(addressStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(addressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements UserProfileFormEvent {
  const factory _AddressChanged(final String addressStr) = _$_AddressChanged;

  String get addressStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FullnameChangedCopyWith<$Res> {
  factory _$$_FullnameChangedCopyWith(
          _$_FullnameChanged value, $Res Function(_$_FullnameChanged) then) =
      __$$_FullnameChangedCopyWithImpl<$Res>;
  $Res call({String fullnameStr});
}

/// @nodoc
class __$$_FullnameChangedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_FullnameChangedCopyWith<$Res> {
  __$$_FullnameChangedCopyWithImpl(
      _$_FullnameChanged _value, $Res Function(_$_FullnameChanged) _then)
      : super(_value, (v) => _then(v as _$_FullnameChanged));

  @override
  _$_FullnameChanged get _value => super._value as _$_FullnameChanged;

  @override
  $Res call({
    Object? fullnameStr = freezed,
  }) {
    return _then(_$_FullnameChanged(
      fullnameStr == freezed
          ? _value.fullnameStr
          : fullnameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullnameChanged implements _FullnameChanged {
  const _$_FullnameChanged(this.fullnameStr);

  @override
  final String fullnameStr;

  @override
  String toString() {
    return 'UserProfileFormEvent.fullnameChanged(fullnameStr: $fullnameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullnameChanged &&
            const DeepCollectionEquality()
                .equals(other.fullnameStr, fullnameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fullnameStr));

  @JsonKey(ignore: true)
  @override
  _$$_FullnameChangedCopyWith<_$_FullnameChanged> get copyWith =>
      __$$_FullnameChangedCopyWithImpl<_$_FullnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return fullnameChanged(fullnameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return fullnameChanged?.call(fullnameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(fullnameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return fullnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return fullnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullnameChanged implements UserProfileFormEvent {
  const factory _FullnameChanged(final String fullnameStr) = _$_FullnameChanged;

  String get fullnameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FullnameChangedCopyWith<_$_FullnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateProfilePressedCopyWith<$Res> {
  factory _$$_UpdateProfilePressedCopyWith(_$_UpdateProfilePressed value,
          $Res Function(_$_UpdateProfilePressed) then) =
      __$$_UpdateProfilePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateProfilePressedCopyWithImpl<$Res>
    extends _$UserProfileFormEventCopyWithImpl<$Res>
    implements _$$_UpdateProfilePressedCopyWith<$Res> {
  __$$_UpdateProfilePressedCopyWithImpl(_$_UpdateProfilePressed _value,
      $Res Function(_$_UpdateProfilePressed) _then)
      : super(_value, (v) => _then(v as _$_UpdateProfilePressed));

  @override
  _$_UpdateProfilePressed get _value => super._value as _$_UpdateProfilePressed;
}

/// @nodoc

class _$_UpdateProfilePressed implements _UpdateProfilePressed {
  const _$_UpdateProfilePressed();

  @override
  String toString() {
    return 'UserProfileFormEvent.updateProfilePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateProfilePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordConfirmationStr)
        passwordConfirmationChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function() updateProfilePressed,
  }) {
    return updateProfilePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
  }) {
    return updateProfilePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordConfirmationStr)?
        passwordConfirmationChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function()? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (updateProfilePressed != null) {
      return updateProfilePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value)
        passwordConfirmationChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_UpdateProfilePressed value) updateProfilePressed,
  }) {
    return updateProfilePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
  }) {
    return updateProfilePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)?
        passwordConfirmationChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_UpdateProfilePressed value)? updateProfilePressed,
    required TResult orElse(),
  }) {
    if (updateProfilePressed != null) {
      return updateProfilePressed(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfilePressed implements UserProfileFormEvent {
  const factory _UpdateProfilePressed() = _$_UpdateProfilePressed;
}

/// @nodoc
mixin _$UserProfileFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password? get password => throw _privateConstructorUsedError;
  PasswordConfirmation? get passwordConfirmation =>
      throw _privateConstructorUsedError;
  Fullname get fullname => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileFormStateCopyWith<UserProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileFormStateCopyWith<$Res> {
  factory $UserProfileFormStateCopyWith(UserProfileFormState value,
          $Res Function(UserProfileFormState) then) =
      _$UserProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password? password,
      PasswordConfirmation? passwordConfirmation,
      Fullname fullname,
      Phone phone,
      Address address,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UserProfileFormStateCopyWithImpl<$Res>
    implements $UserProfileFormStateCopyWith<$Res> {
  _$UserProfileFormStateCopyWithImpl(this._value, this._then);

  final UserProfileFormState _value;
  // ignore: unused_field
  final $Res Function(UserProfileFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmation?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as Fullname,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileFormStateCopyWith<$Res>
    implements $UserProfileFormStateCopyWith<$Res> {
  factory _$$_UserProfileFormStateCopyWith(_$_UserProfileFormState value,
          $Res Function(_$_UserProfileFormState) then) =
      __$$_UserProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password? password,
      PasswordConfirmation? passwordConfirmation,
      Fullname fullname,
      Phone phone,
      Address address,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_UserProfileFormStateCopyWithImpl<$Res>
    extends _$UserProfileFormStateCopyWithImpl<$Res>
    implements _$$_UserProfileFormStateCopyWith<$Res> {
  __$$_UserProfileFormStateCopyWithImpl(_$_UserProfileFormState _value,
      $Res Function(_$_UserProfileFormState) _then)
      : super(_value, (v) => _then(v as _$_UserProfileFormState));

  @override
  _$_UserProfileFormState get _value => super._value as _$_UserProfileFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_UserProfileFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmation?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as Fullname,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UserProfileFormState implements _UserProfileFormState {
  const _$_UserProfileFormState(
      {required this.emailAddress,
      this.password,
      this.passwordConfirmation,
      required this.fullname,
      required this.phone,
      required this.address,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password? password;
  @override
  final PasswordConfirmation? passwordConfirmation;
  @override
  final Fullname fullname;
  @override
  final Phone phone;
  @override
  final Address address;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserProfileFormState(emailAddress: $emailAddress, password: $password, passwordConfirmation: $passwordConfirmation, fullname: $fullname, phone: $phone, address: $address, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.passwordConfirmation, passwordConfirmation) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordConfirmation),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileFormStateCopyWith<_$_UserProfileFormState> get copyWith =>
      __$$_UserProfileFormStateCopyWithImpl<_$_UserProfileFormState>(
          this, _$identity);
}

abstract class _UserProfileFormState implements UserProfileFormState {
  const factory _UserProfileFormState(
      {required final EmailAddress emailAddress,
      final Password? password,
      final PasswordConfirmation? passwordConfirmation,
      required final Fullname fullname,
      required final Phone phone,
      required final Address address,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_UserProfileFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password? get password => throw _privateConstructorUsedError;
  @override
  PasswordConfirmation? get passwordConfirmation =>
      throw _privateConstructorUsedError;
  @override
  Fullname get fullname => throw _privateConstructorUsedError;
  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileFormStateCopyWith<_$_UserProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
