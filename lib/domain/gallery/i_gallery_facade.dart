import 'package:dartz/dartz.dart';
import 'package:papay/domain/gallery/gallery.dart';
import 'package:papay/domain/gallery/gallery_failure.dart';

abstract class IGalleryFacade {
  Stream<Either<GalleryFailure, List<Gallery>>> watchAll(String id);
}
