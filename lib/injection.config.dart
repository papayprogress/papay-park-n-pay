// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/login_form/login_form_bloc.dart' as _i19;
import 'application/auth/register_form/register_form_bloc.dart' as _i24;
import 'application/auth/user_profile/user_profile_bloc.dart' as _i25;
import 'application/auth/user_profile_form/user_profile_form_bloc.dart' as _i26;
import 'application/gallery_watcher/gallery_watcher_bloc.dart' as _i28;
import 'application/history_watcher/history_watcher_bloc.dart' as _i29;
import 'application/location_watcher/location_watcher_bloc.dart' as _i18;
import 'application/main_layout/main_layout_cubit.dart' as _i20;
import 'application/notification/notification_bloc.dart' as _i21;
import 'application/order/order_cubit.dart' as _i22;
import 'application/parking_point_watcher/parking_point_watcher_bloc.dart'
    as _i23;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/gallery/i_gallery_facade.dart' as _i10;
import 'domain/history/i_history_facade.dart' as _i12;
import 'domain/location/i_location_facade.dart' as _i14;
import 'domain/parking_point/i_parking_point_facade.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injection_module.dart' as _i30;
import 'infrastructure/gallery/firebase_gallery_facade.dart' as _i11;
import 'infrastructure/history/firebase_history_facade.dart' as _i13;
import 'infrastructure/location/firebase_location_facade.dart' as _i15;
import 'infrastructure/parking_point/firebase_parking_point_facade.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<_i6.FlutterLocalNotificationsPlugin>(
      () => firebaseInjectableModule.flutterLocalNotificationPlugin);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IGalleryFacade>(
      () => _i11.FirebaseGalleryRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IHistoryFacade>(
      () => _i13.FirebaseHistoryRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.ILocationFacade>(
      () => _i15.FirebaseLocationFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IParkingPointFacade>(
      () => _i17.FirebaseParkingPointRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i18.LocationWatcherBloc>(
      () => _i18.LocationWatcherBloc(get<_i14.ILocationFacade>()));
  gh.factory<_i19.LoginFormBloc>(
      () => _i19.LoginFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i20.MainLayoutCubit>(() => _i20.MainLayoutCubit());
  gh.factory<_i21.NotificationBloc>(() => _i21.NotificationBloc(
      get<_i6.FlutterLocalNotificationsPlugin>(),
      get<_i5.FirebaseMessaging>()));
  gh.factory<_i22.OrderCubit>(() => _i22.OrderCubit());
  gh.factory<_i23.ParkingPointWatcherBloc>(
      () => _i23.ParkingPointWatcherBloc(get<_i16.IParkingPointFacade>()));
  gh.factory<_i24.RegisterFormBloc>(
      () => _i24.RegisterFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i25.UserProfileBloc>(
      () => _i25.UserProfileBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i26.UserProfileFormBloc>(
      () => _i26.UserProfileFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i28.GalleryWatcherBloc>(
      () => _i28.GalleryWatcherBloc(get<_i10.IGalleryFacade>()));
  gh.factory<_i29.HistoryWatcherBloc>(
      () => _i29.HistoryWatcherBloc(get<_i12.IHistoryFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i30.FirebaseInjectableModule {}
