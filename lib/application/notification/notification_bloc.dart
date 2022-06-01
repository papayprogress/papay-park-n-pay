import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/notification/app_notification.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final FlutterLocalNotificationsPlugin _localNotifications;
  final FirebaseMessaging _firebaseMessaging;

  StreamSubscription<RemoteMessage>? _localMessageSubscription;
  StreamSubscription<RemoteMessage>? _appMessageSubscription;
  StreamSubscription? _fcmTokenSubscription;

  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  final initializationSettings = const InitializationSettings(
    android: AndroidInitializationSettings('@mipmap/ic_launcher'),
  );

  NotificationBloc(this._localNotifications, this._firebaseMessaging)
      : super(NotificationState.initial()) {
    on<NotificationEvent>((event, emit) {
      event.map(
        local: (e) {
          emit(NotificationState(
            notifications: [
              ...state.notifications,
              AppNotification(
                title: e.message.notification?.title ?? 'Title',
                body: e.message.notification?.body ?? 'Body',
                hasRead: false,
              ),
            ],
          ));
        },
        app: (e) {
          emit(NotificationState(
            notifications: [
              ...state.notifications,
              AppNotification(
                title: e.message.notification?.title ?? 'Title',
                body: e.message.notification?.body ?? 'Body',
                hasRead: false,
              ),
            ],
          ));
        },
        received: (e) {},
        error: (e) {},
      );
    });
  }

  Future<void> initalize() async {
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _localNotifications.initialize(initializationSettings);

    _fcmTokenSubscription =
        _firebaseMessaging.getToken().asStream().listen((event) {
      // ignore: avoid_print
      print('FCM Token = $event');
    });

    _localMessageSubscription =
        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showLocalMessage(message);
      add(NotificationEvent.local(message));
    });

    _appMessageSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        add(NotificationEvent.app(message));
      }
    });
  }

  Future<void> backgroundMessageHandler(RemoteMessage message) async {
    showLocalMessage(message);
  }

  showLocalMessage(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null) {
      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            color: Colors.blue,
            icon: "@mipmap/ic_launcher",
          ),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _fcmTokenSubscription?.cancel();
    _appMessageSubscription?.cancel();
    _localMessageSubscription?.cancel();
    return super.close();
  }
}
