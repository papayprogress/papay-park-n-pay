part of 'history_watcher_bloc.dart';

@freezed
class HistoryWatcherEvent with _$HistoryWatcherEvent {
  const factory HistoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory HistoryWatcherEvent.galleryReceived(
          Either<HistoryFailure, List<History>> failureOrHistory) =
      _HistoryReceived;
}
