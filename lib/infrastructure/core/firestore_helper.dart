import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:papay/domain/auth/i_auth_facade.dart';
import 'package:papay/domain/core/errors.dart';
import 'package:papay/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.email);
  }

  Future<DocumentReference> locationDocument() async {
    return FirebaseFirestore.instance.collection('location').doc();
  }

  Future<DocumentReference> parkingPointDocument() async {
    return FirebaseFirestore.instance
        .collection('location')
        .doc()
        .collection('parking_point')
        .doc();
  }

  Future<QuerySnapshot> parkingHistoryDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('location')
        .doc()
        .collection('parking_point')
        .where('user_id', isEqualTo: user.id)
        .get();
  }
}
