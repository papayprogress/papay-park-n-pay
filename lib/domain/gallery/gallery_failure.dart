import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_failure.freezed.dart';

@freezed
class GalleryFailure with _$GalleryFailure {
  const factory GalleryFailure.unexpected() = _Unexpected;
  const factory GalleryFailure.inSufficientPermission() =
      _InSufficientPermission;
  const factory GalleryFailure.unableToUpdate() = _UnableToUpdate;
}
