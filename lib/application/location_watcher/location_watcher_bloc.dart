import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/location/i_location_facade.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/domain/location/location_failure.dart';

part 'location_watcher_event.dart';
part 'location_watcher_state.dart';
part 'location_watcher_bloc.freezed.dart';

@injectable
class LocationWatcherBloc
    extends Bloc<LocationWatcherEvent, LocationWatcherState> {
  final ILocationFacade _locationRepository;
  StreamSubscription<Either<LocationFailure, List<Location>>>?
      _locationStreamSubscription;

  LocationWatcherBloc(this._locationRepository)
      : super(const LocationWatcherState.initial()) {
    on<LocationWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const LocationWatcherState.loadInProgress());
          await _locationStreamSubscription?.cancel();
          _locationStreamSubscription = _locationRepository.watchAll().listen(
                (failureOrNotes) =>
                    add(LocationWatcherEvent.locationReceived(failureOrNotes)),
              );
        },
        locationReceived: (e) async {
          e.failureOrLocation.fold(
            (l) => emit(LocationWatcherState.loadFailure(l)),
            (r) => emit(LocationWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _locationStreamSubscription?.cancel();
    return super.close();
  }
}
