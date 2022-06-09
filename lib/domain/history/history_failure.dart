import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_failure.freezed.dart';

@freezed
class HistoryFailure with _$HistoryFailure {
  const factory HistoryFailure.unexpected() = _Unexpected;
  const factory HistoryFailure.inSufficientPermission() =
      _InSufficientPermission;
  const factory HistoryFailure.unableToUpdate() = _UnableToUpdate;
}
