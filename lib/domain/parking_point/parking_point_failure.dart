import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_point_failure.freezed.dart';

@freezed
class ParkingPointFailure with _$ParkingPointFailure {
  const factory ParkingPointFailure.unexpected() = _Unexpected;
  const factory ParkingPointFailure.inSufficientPermission() =
      _InSufficientPermission;
  const factory ParkingPointFailure.unableToUpdate() = _UnableToUpdate;
}
