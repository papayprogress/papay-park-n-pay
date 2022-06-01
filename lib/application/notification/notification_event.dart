part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.local(RemoteMessage message) = _Local;
  const factory NotificationEvent.app(RemoteMessage message) = _App;
  const factory NotificationEvent.received(String payload) = _Received;
  const factory NotificationEvent.error(String error) = _Error;
}
