import 'package:dartz/dartz.dart';
import 'package:papay/domain/parking_point/parking_point.dart';
import 'package:papay/domain/parking_point/parking_point_failure.dart';

abstract class IParkingPointFacade {
  Stream<Either<ParkingPointFailure, List<ParkingPoint>>> watchAll(String id);
}
