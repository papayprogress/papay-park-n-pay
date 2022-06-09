import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/parking_point/i_parking_point_facade.dart';
import 'package:papay/domain/parking_point/parking_point.dart';
import 'package:papay/domain/parking_point/parking_point_failure.dart';

part 'parking_point_watcher_event.dart';
part 'parking_point_watcher_state.dart';
part 'parking_point_watcher_bloc.freezed.dart';

@injectable
class ParkingPointWatcherBloc
    extends Bloc<ParkingPointWatcherEvent, ParkingPointWatcherState> {
  final IParkingPointFacade _parkingPointRepository;
  StreamSubscription<Either<ParkingPointFailure, List<ParkingPoint>>>?
      _parkingPointStreamSubscription;

  ParkingPointWatcherBloc(this._parkingPointRepository)
      : super(const ParkingPointWatcherState.initial()) {
    on<ParkingPointWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const ParkingPointWatcherState.loadInProgress());
          await _parkingPointStreamSubscription?.cancel();
          _parkingPointStreamSubscription =
              _parkingPointRepository.watchAll(e.id).listen(
                    (failureOrParkingPoint) => add(
                        ParkingPointWatcherEvent.parkingPointReceived(
                            failureOrParkingPoint)),
                  );
        },
        parkingPointReceived: (e) async {
          e.failureOrParkingPoint.fold(
            (l) => emit(ParkingPointWatcherState.loadFailure(l)),
            (r) => emit(ParkingPointWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }
}
