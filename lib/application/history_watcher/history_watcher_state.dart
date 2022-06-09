part of 'history_watcher_bloc.dart';

@freezed
class HistoryWatcherState with _$HistoryWatcherState {
  const factory HistoryWatcherState.initial() = _Initial;
  const factory HistoryWatcherState.loadInProgress() = _LoadInProgress;
  const factory HistoryWatcherState.loadSuccess(List<History> histories) =
      _LoadSuccess;
  const factory HistoryWatcherState.loadFailure(HistoryFailure historyFailure) =
      _LoadFailure;
}
