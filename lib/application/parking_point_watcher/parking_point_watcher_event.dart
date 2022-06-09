part of 'parking_point_watcher_bloc.dart';

@freezed
class ParkingPointWatcherEvent with _$ParkingPointWatcherEvent {
  const factory ParkingPointWatcherEvent.watchAllStarted(String id) =
      _WatchAllStarted;
  const factory ParkingPointWatcherEvent.parkingPointReceived(
      Either<ParkingPointFailure, List<ParkingPoint>>
          failureOrParkingPoint) = _ParkingPointReceived;
}
