import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/gallery/gallery.dart';
import 'package:papay/domain/gallery/gallery_failure.dart';
import 'package:papay/domain/gallery/i_gallery_facade.dart';
import 'package:rxdart/rxdart.dart';

import 'package:papay/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: IGalleryFacade)
class FirebaseGalleryRepository implements IGalleryFacade {
  final FirebaseFirestore _firestore;

  FirebaseGalleryRepository(this._firestore);

  @override
  Stream<Either<GalleryFailure, List<Gallery>>> watchAll(String id) async* {
    final locationDoc = _firestore.locationDocument;
    yield* locationDoc
        .doc(id)
        .imagesCollection
        .snapshots()
        .map(
          (snapshot) => right<GalleryFailure, List<Gallery>>(snapshot.docs
              .map((doc) => Gallery.fromFirebase(
                  doc as DocumentSnapshot<Map<String, dynamic>>))
              .toList()),
        )
        .onErrorReturnWith((error, _) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const GalleryFailure.inSufficientPermission());
      } else {
        return left(const GalleryFailure.unexpected());
      }
    });
  }
}
