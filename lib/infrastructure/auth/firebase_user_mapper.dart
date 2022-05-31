import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:papay/domain/auth/app_user.dart';

extension FirebaseUserDomainX on firebase.User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      name: displayName,
      photoURL: photoURL,
      email: email!,
    );
  }
}
