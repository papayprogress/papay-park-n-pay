// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      address: json['address'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      openHour: json['open_hour'] as String,
      closeHour: json['close_hour'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'open_hour': instance.openHour,
      'close_hour': instance.closeHour,
    };
