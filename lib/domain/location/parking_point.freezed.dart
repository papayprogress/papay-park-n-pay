// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParkingPoint _$ParkingPointFromJson(Map<String, dynamic> json) {
  return _ParkingPoint.fromJson(json);
}

/// @nodoc
mixin _$ParkingPoint {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingPointCopyWith<ParkingPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPointCopyWith<$Res> {
  factory $ParkingPointCopyWith(
          ParkingPoint value, $Res Function(ParkingPoint) then) =
      _$ParkingPointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'vehicle_type') int vehicleType});
}

/// @nodoc
class _$ParkingPointCopyWithImpl<$Res> implements $ParkingPointCopyWith<$Res> {
  _$ParkingPointCopyWithImpl(this._value, this._then);

  final ParkingPoint _value;
  // ignore: unused_field
  final $Res Function(ParkingPoint) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ParkingPointCopyWith<$Res>
    implements $ParkingPointCopyWith<$Res> {
  factory _$$_ParkingPointCopyWith(
          _$_ParkingPoint value, $Res Function(_$_ParkingPoint) then) =
      __$$_ParkingPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'vehicle_type') int vehicleType});
}

/// @nodoc
class __$$_ParkingPointCopyWithImpl<$Res>
    extends _$ParkingPointCopyWithImpl<$Res>
    implements _$$_ParkingPointCopyWith<$Res> {
  __$$_ParkingPointCopyWithImpl(
      _$_ParkingPoint _value, $Res Function(_$_ParkingPoint) _then)
      : super(_value, (v) => _then(v as _$_ParkingPoint));

  @override
  _$_ParkingPoint get _value => super._value as _$_ParkingPoint;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$_ParkingPoint(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingPoint extends _ParkingPoint {
  const _$_ParkingPoint(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'vehicle_type') required this.vehicleType})
      : super._();

  factory _$_ParkingPoint.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingPointFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'vehicle_type')
  final int vehicleType;

  @override
  String toString() {
    return 'ParkingPoint(id: $id, name: $name, status: $status, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingPoint &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(vehicleType));

  @JsonKey(ignore: true)
  @override
  _$$_ParkingPointCopyWith<_$_ParkingPoint> get copyWith =>
      __$$_ParkingPointCopyWithImpl<_$_ParkingPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingPointToJson(this);
  }
}

abstract class _ParkingPoint extends ParkingPoint {
  const factory _ParkingPoint(
          {@JsonKey(ignore: true) final String? id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'status') required final bool status,
          @JsonKey(name: 'vehicle_type') required final int vehicleType}) =
      _$_ParkingPoint;
  const _ParkingPoint._() : super._();

  factory _ParkingPoint.fromJson(Map<String, dynamic> json) =
      _$_ParkingPoint.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingPointCopyWith<_$_ParkingPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
