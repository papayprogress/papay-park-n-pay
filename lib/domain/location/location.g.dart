// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      address: json['address'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      openHour: json['open_hour'] as String,
      closeHour: json['close_hour'] as String,
      ratePerHour: json['rate_per_hour'] as int,
      sizePerSpot: json['size_per_spot'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'open_hour': instance.openHour,
      'close_hour': instance.closeHour,
      'rate_per_hour': instance.ratePerHour,
      'size_per_spot': instance.sizePerSpot,
    };
