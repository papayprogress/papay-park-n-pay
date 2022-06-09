import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/history/history.dart';
import 'package:papay/domain/history/history_failure.dart';
import 'package:papay/domain/history/i_history_facade.dart';
import 'package:rxdart/rxdart.dart';

import 'package:papay/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: IHistoryFacade)
class FirebaseHistoryRepository implements IHistoryFacade {
  final FirebaseFirestore _firestore;

  FirebaseHistoryRepository(this._firestore);

  @override
  Stream<Either<HistoryFailure, List<History>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.historiesCollection
        .snapshots()
        .map(
          (snapshot) => right<HistoryFailure, List<History>>(snapshot.docs
              .map((doc) => History.fromFirebase(
                  doc as DocumentSnapshot<Map<String, dynamic>>))
              .toList()),
        )
        .onErrorReturnWith((error, _) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        print(error);
        return left(const HistoryFailure.inSufficientPermission());
      } else {
        print(error);
        return left(const HistoryFailure.unexpected());
      }
    });
  }
}
