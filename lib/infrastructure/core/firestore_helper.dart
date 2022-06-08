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

  CollectionReference get locationDocument =>
      FirebaseFirestore.instance.collection('locations');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get parkingSpotCollection => collection('parking_point');

  CollectionReference get imagesCollection => collection('images');

  CollectionReference get historiesCollection => collection('histories');
}
