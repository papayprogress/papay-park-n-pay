import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:papay/domain/location/i_location_facade.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/domain/location/location_failure.dart';
import 'package:papay/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: ILocationFacade)
class FirebaseLocationFacade implements ILocationFacade {
  final FirebaseFirestore _firestore;

  FirebaseLocationFacade(this._firestore);

  @override
  Stream<Either<LocationFailure, List<Location>>> watchAll() async* {
    final locationDoc = _firestore.locationDocument;
    yield* locationDoc
        // .baseCollection
        // .orderBy('created_at', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<LocationFailure, List<Location>>(
            snapshot.docs
                .map((doc) => Location.fromFirestore(
                    doc as DocumentSnapshot<Map<String, dynamic>>))
                .toList(),
          ),
        )
        .onErrorReturnWith((error, _) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const LocationFailure.inSufficientPermission());
      } else {
        return left(const LocationFailure.unexpected());
      }
    });
  }
}
