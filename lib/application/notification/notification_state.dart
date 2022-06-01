part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required List<AppNotification> notifications,
  }) = _NotificationState;

  factory NotificationState.initial() =>
      const NotificationState(notifications: []);
}
