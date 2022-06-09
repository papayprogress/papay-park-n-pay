part of 'gallery_watcher_bloc.dart';

@freezed
class GalleryWatcherState with _$GalleryWatcherState {
  const factory GalleryWatcherState.initial() = _Initial;
  const factory GalleryWatcherState.loadInProgress() = _LoadInProgress;
  const factory GalleryWatcherState.loadSuccess(List<Gallery> galleries) =
      _LoadSuccess;
  const factory GalleryWatcherState.loadFailure(GalleryFailure galleryFailure) =
      _LoadFailure;
}
