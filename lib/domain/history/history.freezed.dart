// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_location')
  String get idLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  String get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  String get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_at')
  String get finishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_total')
  String get paymentTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_point_name')
  String get parkingPointName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'id_location') String idLocation,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'lat') String lat,
      @JsonKey(name: 'lon') String lon,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'finished_at') String finishedAt,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_total') String paymentTotal,
      @JsonKey(name: 'vehicle_type') int vehicleType,
      @JsonKey(name: 'parking_point_name') String parkingPointName});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res> implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  final History _value;
  // ignore: unused_field
  final $Res Function(History) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idLocation = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? date = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? paymentStatus = freezed,
    Object? paymentTotal = freezed,
    Object? vehicleType = freezed,
    Object? parkingPointName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idLocation: idLocation == freezed
          ? _value.idLocation
          : idLocation // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentTotal: paymentTotal == freezed
          ? _value.paymentTotal
          : paymentTotal // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
      parkingPointName: parkingPointName == freezed
          ? _value.parkingPointName
          : parkingPointName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$_HistoryCopyWith(
          _$_History value, $Res Function(_$_History) then) =
      __$$_HistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'id_location') String idLocation,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'lat') String lat,
      @JsonKey(name: 'lon') String lon,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'finished_at') String finishedAt,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_total') String paymentTotal,
      @JsonKey(name: 'vehicle_type') int vehicleType,
      @JsonKey(name: 'parking_point_name') String parkingPointName});
}

/// @nodoc
class __$$_HistoryCopyWithImpl<$Res> extends _$HistoryCopyWithImpl<$Res>
    implements _$$_HistoryCopyWith<$Res> {
  __$$_HistoryCopyWithImpl(_$_History _value, $Res Function(_$_History) _then)
      : super(_value, (v) => _then(v as _$_History));

  @override
  _$_History get _value => super._value as _$_History;

  @override
  $Res call({
    Object? id = freezed,
    Object? idLocation = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? date = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? paymentStatus = freezed,
    Object? paymentTotal = freezed,
    Object? vehicleType = freezed,
    Object? parkingPointName = freezed,
  }) {
    return _then(_$_History(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idLocation: idLocation == freezed
          ? _value.idLocation
          : idLocation // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentTotal: paymentTotal == freezed
          ? _value.paymentTotal
          : paymentTotal // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
      parkingPointName: parkingPointName == freezed
          ? _value.parkingPointName
          : parkingPointName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_History extends _History {
  const _$_History(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: 'id_location') required this.idLocation,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lon') required this.lon,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'finished_at') required this.finishedAt,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_total') required this.paymentTotal,
      @JsonKey(name: 'vehicle_type') required this.vehicleType,
      @JsonKey(name: 'parking_point_name') required this.parkingPointName})
      : super._();

  factory _$_History.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: 'id_location')
  final String idLocation;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'lat')
  final String lat;
  @override
  @JsonKey(name: 'lon')
  final String lon;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'started_at')
  final String startedAt;
  @override
  @JsonKey(name: 'finished_at')
  final String finishedAt;
  @override
  @JsonKey(name: 'payment_status')
  final bool paymentStatus;
  @override
  @JsonKey(name: 'payment_total')
  final String paymentTotal;
  @override
  @JsonKey(name: 'vehicle_type')
  final int vehicleType;
  @override
  @JsonKey(name: 'parking_point_name')
  final String parkingPointName;

  @override
  String toString() {
    return 'History(id: $id, idLocation: $idLocation, name: $name, address: $address, lat: $lat, lon: $lon, date: $date, startedAt: $startedAt, finishedAt: $finishedAt, paymentStatus: $paymentStatus, paymentTotal: $paymentTotal, vehicleType: $vehicleType, parkingPointName: $parkingPointName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_History &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.idLocation, idLocation) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.finishedAt, finishedAt) &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other.paymentTotal, paymentTotal) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType) &&
            const DeepCollectionEquality()
                .equals(other.parkingPointName, parkingPointName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idLocation),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(finishedAt),
      const DeepCollectionEquality().hash(paymentStatus),
      const DeepCollectionEquality().hash(paymentTotal),
      const DeepCollectionEquality().hash(vehicleType),
      const DeepCollectionEquality().hash(parkingPointName));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryCopyWith<_$_History> get copyWith =>
      __$$_HistoryCopyWithImpl<_$_History>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryToJson(this);
  }
}

abstract class _History extends History {
  const factory _History(
      {@JsonKey(ignore: true)
          final String? id,
      @JsonKey(name: 'id_location')
          required final String idLocation,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'address')
          required final String address,
      @JsonKey(name: 'lat')
          required final String lat,
      @JsonKey(name: 'lon')
          required final String lon,
      @JsonKey(name: 'date')
          required final String date,
      @JsonKey(name: 'started_at')
          required final String startedAt,
      @JsonKey(name: 'finished_at')
          required final String finishedAt,
      @JsonKey(name: 'payment_status')
          required final bool paymentStatus,
      @JsonKey(name: 'payment_total')
          required final String paymentTotal,
      @JsonKey(name: 'vehicle_type')
          required final int vehicleType,
      @JsonKey(name: 'parking_point_name')
          required final String parkingPointName}) = _$_History;
  const _History._() : super._();

  factory _History.fromJson(Map<String, dynamic> json) = _$_History.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_location')
  String get idLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lat')
  String get lat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lon')
  String get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'finished_at')
  String get finishedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_status')
  bool get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_total')
  String get paymentTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parking_point_name')
  String get parkingPointName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryCopyWith<_$_History> get copyWith =>
      throw _privateConstructorUsedError;
}
