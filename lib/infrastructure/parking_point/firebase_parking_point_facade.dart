import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:papay/infrastructure/core/firestore_helper.dart';
import 'package:papay/domain/parking_point/i_parking_point_facade.dart';
import 'package:papay/domain/parking_point/parking_point.dart';
import 'package:papay/domain/parking_point/parking_point_failure.dart';

@LazySingleton(as: IParkingPointFacade)
class FirebaseParkingPointRepository implements IParkingPointFacade {
  final FirebaseFirestore _firestore;

  FirebaseParkingPointRepository(this._firestore);

  @override
  Stream<Either<ParkingPointFailure, List<ParkingPoint>>> watchAll(
      String id) async* {
    final locationDoc = _firestore.locationDocument;
    yield* locationDoc
        .doc(id)
        .parkingSpotCollection
        .orderBy('name', descending: false)
        .snapshots()
        .map(
          (snapshot) => right<ParkingPointFailure, List<ParkingPoint>>(snapshot
              .docs
              .map((doc) => ParkingPoint.fromFirebase(
                  doc as DocumentSnapshot<Map<String, dynamic>>))
              .toList()),
        )
        .onErrorReturnWith((error, _) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const ParkingPointFailure.inSufficientPermission());
      } else {
        return left(const ParkingPointFailure.unexpected());
      }
    });
  }
}
