import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required final String title,
    required final String body,
    required final bool hasRead,
  }) = _AppNotification;
}
