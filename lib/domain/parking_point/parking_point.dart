import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_point.freezed.dart';
part 'parking_point.g.dart';

@freezed
class ParkingPoint with _$ParkingPoint {
  const factory ParkingPoint({
    @JsonKey(ignore: true) final String? id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'status') required final bool status,
    @JsonKey(name: 'vehicle_type') required final int vehicleType,
  }) = _ParkingPoint;

  const ParkingPoint._();

  ParkingPoint toDomain() {
    return ParkingPoint(
      name: name,
      status: status,
      vehicleType: vehicleType,
    );
  }

  factory ParkingPoint.fromJson(Map<String, dynamic> json) =>
      _$ParkingPointFromJson(json);

  factory ParkingPoint.fromFirebase(DocumentSnapshot doc) {
    return ParkingPoint.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
