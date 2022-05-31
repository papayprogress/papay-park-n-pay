// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_layout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainLayoutState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainLayoutStateCopyWith<MainLayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainLayoutStateCopyWith<$Res> {
  factory $MainLayoutStateCopyWith(
          MainLayoutState value, $Res Function(MainLayoutState) then) =
      _$MainLayoutStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$MainLayoutStateCopyWithImpl<$Res>
    implements $MainLayoutStateCopyWith<$Res> {
  _$MainLayoutStateCopyWithImpl(this._value, this._then);

  final MainLayoutState _value;
  // ignore: unused_field
  final $Res Function(MainLayoutState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MainLayoutStateCopyWith<$Res>
    implements $MainLayoutStateCopyWith<$Res> {
  factory _$$_MainLayoutStateCopyWith(
          _$_MainLayoutState value, $Res Function(_$_MainLayoutState) then) =
      __$$_MainLayoutStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_MainLayoutStateCopyWithImpl<$Res>
    extends _$MainLayoutStateCopyWithImpl<$Res>
    implements _$$_MainLayoutStateCopyWith<$Res> {
  __$$_MainLayoutStateCopyWithImpl(
      _$_MainLayoutState _value, $Res Function(_$_MainLayoutState) _then)
      : super(_value, (v) => _then(v as _$_MainLayoutState));

  @override
  _$_MainLayoutState get _value => super._value as _$_MainLayoutState;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_$_MainLayoutState(
      currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainLayoutState implements _MainLayoutState {
  const _$_MainLayoutState(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'MainLayoutState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainLayoutState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  _$$_MainLayoutStateCopyWith<_$_MainLayoutState> get copyWith =>
      __$$_MainLayoutStateCopyWithImpl<_$_MainLayoutState>(this, _$identity);
}

abstract class _MainLayoutState implements MainLayoutState {
  const factory _MainLayoutState(final int currentIndex) = _$_MainLayoutState;

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainLayoutStateCopyWith<_$_MainLayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
