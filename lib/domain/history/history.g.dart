// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_History _$$_HistoryFromJson(Map<String, dynamic> json) => _$_History(
      idLocation: json['id_location'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      date: json['date'] as String,
      startedAt: json['started_at'] as String,
      finishedAt: json['finished_at'] as String,
      paymentStatus: json['payment_status'] as bool,
      paymentTotal: json['payment_total'] as int,
      vehicleType: json['vehicle_type'] as int,
      parkingPointName: json['parking_point_name'] as String,
    );

Map<String, dynamic> _$$_HistoryToJson(_$_History instance) =>
    <String, dynamic>{
      'id_location': instance.idLocation,
      'name': instance.name,
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'date': instance.date,
      'started_at': instance.startedAt,
      'finished_at': instance.finishedAt,
      'payment_status': instance.paymentStatus,
      'payment_total': instance.paymentTotal,
      'vehicle_type': instance.vehicleType,
      'parking_point_name': instance.parkingPointName,
    };
