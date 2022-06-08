// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingPoint _$$_ParkingPointFromJson(Map<String, dynamic> json) =>
    _$_ParkingPoint(
      name: json['name'] as String,
      status: json['status'] as bool,
      vehicleType: json['vehicle_type'] as int,
    );

Map<String, dynamic> _$$_ParkingPointToJson(_$_ParkingPoint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'vehicle_type': instance.vehicleType,
    };
