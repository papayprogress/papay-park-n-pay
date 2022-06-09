part of 'gallery_watcher_bloc.dart';

@freezed
class GalleryWatcherEvent with _$GalleryWatcherEvent {
  const factory GalleryWatcherEvent.watchAllStarted(String id) =
      _WatchAllStarted;
  const factory GalleryWatcherEvent.galleryReceived(
          Either<GalleryFailure, List<Gallery>> failureOrGallery) =
      _GalleryReceived;
}
