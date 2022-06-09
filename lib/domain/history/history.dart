import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  const factory History({
    @JsonKey(ignore: true) final String? id,
    @JsonKey(name: 'id_location') required final String idLocation,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'lat') required final String lat,
    @JsonKey(name: 'lon') required final String lon,
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'started_at') required final String startedAt,
    @JsonKey(name: 'finished_at') required final String finishedAt,
    @JsonKey(name: 'payment_status') required final bool paymentStatus,
    @JsonKey(name: 'payment_total') required final String paymentTotal,
    @JsonKey(name: 'vehicle_type') required final int vehicleType,
    @JsonKey(name: 'parking_point_name') required final String parkingPointName,
  }) = _History;

  const History._();

  History toDomain() {
    return History(
      idLocation: idLocation,
      name: name,
      address: address,
      lat: lat,
      lon: lon,
      date: date,
      startedAt: startedAt,
      finishedAt: finishedAt,
      paymentStatus: paymentStatus,
      paymentTotal: paymentTotal,
      vehicleType: vehicleType,
      parkingPointName: parkingPointName,
    );
  }

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  factory History.fromFirebase(DocumentSnapshot doc) {
    return History.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
