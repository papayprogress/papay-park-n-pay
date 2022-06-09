part of 'parking_point_watcher_bloc.dart';

@freezed
class ParkingPointWatcherState with _$ParkingPointWatcherState {
  const factory ParkingPointWatcherState.initial() = _Initial;
  const factory ParkingPointWatcherState.loadInProgress() = _LoadInProgress;
  const factory ParkingPointWatcherState.loadSuccess(
      List<ParkingPoint> parkingPoint) = _LoadSuccess;
  const factory ParkingPointWatcherState.loadFailure(
      ParkingPointFailure parkingPointFailure) = _LoadFailure;
}
