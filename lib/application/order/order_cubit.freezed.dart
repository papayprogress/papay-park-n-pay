// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  Status get status => throw _privateConstructorUsedError;
  int get idLocation => throw _privateConstructorUsedError;
  int get selectedSpot => throw _privateConstructorUsedError;
  int get selectedTime => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  int get selectedPayment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      int idLocation,
      int selectedSpot,
      int selectedTime,
      String? referralCode,
      int selectedPayment});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? idLocation = freezed,
    Object? selectedSpot = freezed,
    Object? selectedTime = freezed,
    Object? referralCode = freezed,
    Object? selectedPayment = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      idLocation: idLocation == freezed
          ? _value.idLocation
          : idLocation // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSpot: selectedSpot == freezed
          ? _value.selectedSpot
          : selectedSpot // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTime: selectedTime == freezed
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as int,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPayment: selectedPayment == freezed
          ? _value.selectedPayment
          : selectedPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      int idLocation,
      int selectedSpot,
      int selectedTime,
      String? referralCode,
      int selectedPayment});
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, (v) => _then(v as _$_OrderState));

  @override
  _$_OrderState get _value => super._value as _$_OrderState;

  @override
  $Res call({
    Object? status = freezed,
    Object? idLocation = freezed,
    Object? selectedSpot = freezed,
    Object? selectedTime = freezed,
    Object? referralCode = freezed,
    Object? selectedPayment = freezed,
  }) {
    return _then(_$_OrderState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      idLocation: idLocation == freezed
          ? _value.idLocation
          : idLocation // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSpot: selectedSpot == freezed
          ? _value.selectedSpot
          : selectedSpot // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTime: selectedTime == freezed
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as int,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPayment: selectedPayment == freezed
          ? _value.selectedPayment
          : selectedPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OrderState extends _OrderState {
  const _$_OrderState(
      {required this.status,
      required this.idLocation,
      required this.selectedSpot,
      required this.selectedTime,
      this.referralCode,
      required this.selectedPayment})
      : super._();

  @override
  final Status status;
  @override
  final int idLocation;
  @override
  final int selectedSpot;
  @override
  final int selectedTime;
  @override
  final String? referralCode;
  @override
  final int selectedPayment;

  @override
  String toString() {
    return 'OrderState(status: $status, idLocation: $idLocation, selectedSpot: $selectedSpot, selectedTime: $selectedTime, referralCode: $referralCode, selectedPayment: $selectedPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.idLocation, idLocation) &&
            const DeepCollectionEquality()
                .equals(other.selectedSpot, selectedSpot) &&
            const DeepCollectionEquality()
                .equals(other.selectedTime, selectedTime) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode) &&
            const DeepCollectionEquality()
                .equals(other.selectedPayment, selectedPayment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(idLocation),
      const DeepCollectionEquality().hash(selectedSpot),
      const DeepCollectionEquality().hash(selectedTime),
      const DeepCollectionEquality().hash(referralCode),
      const DeepCollectionEquality().hash(selectedPayment));

  @JsonKey(ignore: true)
  @override
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState extends OrderState {
  const factory _OrderState(
      {required final Status status,
      required final int idLocation,
      required final int selectedSpot,
      required final int selectedTime,
      final String? referralCode,
      required final int selectedPayment}) = _$_OrderState;
  const _OrderState._() : super._();

  @override
  Status get status => throw _privateConstructorUsedError;
  @override
  int get idLocation => throw _privateConstructorUsedError;
  @override
  int get selectedSpot => throw _privateConstructorUsedError;
  @override
  int get selectedTime => throw _privateConstructorUsedError;
  @override
  String? get referralCode => throw _privateConstructorUsedError;
  @override
  int get selectedPayment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
