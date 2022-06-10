import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/history/history.dart';
import 'package:papay/domain/history/history_failure.dart';
import 'package:papay/domain/history/i_history_facade.dart';

part 'history_watcher_event.dart';
part 'history_watcher_state.dart';
part 'history_watcher_bloc.freezed.dart';

@injectable
class HistoryWatcherBloc
    extends Bloc<HistoryWatcherEvent, HistoryWatcherState> {
  final IHistoryFacade _historyRepository;

  StreamSubscription<Either<HistoryFailure, List<History>>>?
      _historyStreamSubscription;

  HistoryWatcherBloc(this._historyRepository)
      : super(const HistoryWatcherState.initial()) {
    on<HistoryWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (_) async {
          emit(const HistoryWatcherState.loadInProgress());
          await _historyStreamSubscription?.cancel();
          _historyStreamSubscription = _historyRepository.watchAll().listen(
                (failureOrHistory) =>
                    add(HistoryWatcherEvent.galleryReceived(failureOrHistory)),
              );
        },
        galleryReceived: (e) async {
          e.failureOrHistory.fold(
            (l) => emit(HistoryWatcherState.loadFailure(l)),
            (r) => emit(HistoryWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _historyStreamSubscription?.cancel();
    return super.close();
  }
}
