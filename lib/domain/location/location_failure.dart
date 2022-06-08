import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.unexpected() = _Unexpected;
  const factory LocationFailure.inSufficientPermission() =
      _InSufficientPermission;
  const factory LocationFailure.unableToUpdate() = _UnableToUpdate;
}
