import 'package:dartz/dartz.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/domain/location/location_failure.dart';

abstract class ILocationFacade {
  Stream<Either<LocationFailure, List<Location>>> watchAll();
}
