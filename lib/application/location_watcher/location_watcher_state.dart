part of 'location_watcher_bloc.dart';

@freezed
class LocationWatcherState with _$LocationWatcherState {
  const factory LocationWatcherState.initial() = _Initial;
  const factory LocationWatcherState.loadInProgress() = _LoadInProgress;
  const factory LocationWatcherState.loadSuccess(List<Location> location) =
      _LoadSuccess;
  const factory LocationWatcherState.loadFailure(
      LocationFailure locationFailure) = _LoadFailure;
}
