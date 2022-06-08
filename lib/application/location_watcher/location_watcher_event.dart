part of 'location_watcher_bloc.dart';

@freezed
class LocationWatcherEvent with _$LocationWatcherEvent {
  const factory LocationWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory LocationWatcherEvent.locationReceived(
          Either<LocationFailure, List<Location>> failureOrNotes) =
      _LocationReceived;
}
