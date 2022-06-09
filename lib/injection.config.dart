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

import 'application/auth/auth_bloc.dart' as _i23;
import 'application/auth/login_form/login_form_bloc.dart' as _i15;
import 'application/auth/register_form/register_form_bloc.dart' as _i20;
import 'application/auth/user_profile/user_profile_bloc.dart' as _i21;
import 'application/auth/user_profile_form/user_profile_form_bloc.dart' as _i22;
import 'application/location_watcher/location_watcher_bloc.dart' as _i14;
import 'application/main_layout/main_layout_cubit.dart' as _i16;
import 'application/notification/notification_bloc.dart' as _i17;
import 'application/order/order_cubit.dart' as _i18;
import 'application/parking_point_watcher/parking_point_watcher_bloc.dart'
    as _i19;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/location/i_location_facade.dart' as _i10;
import 'domain/parking_point/i_parking_point_facade.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injection_module.dart' as _i24;
import 'infrastructure/location/firebase_location_facade.dart' as _i11;
import 'infrastructure/parking_point/firebase_parking_point_facade.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.ILocationFacade>(
      () => _i11.FirebaseLocationFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IParkingPointFacade>(
      () => _i13.FirebaseParkingPointRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i14.LocationWatcherBloc>(
      () => _i14.LocationWatcherBloc(get<_i10.ILocationFacade>()));
  gh.factory<_i15.LoginFormBloc>(
      () => _i15.LoginFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.MainLayoutCubit>(() => _i16.MainLayoutCubit());
  gh.factory<_i17.NotificationBloc>(() => _i17.NotificationBloc(
      get<_i6.FlutterLocalNotificationsPlugin>(),
      get<_i5.FirebaseMessaging>()));
  gh.factory<_i18.OrderCubit>(() => _i18.OrderCubit());
  gh.factory<_i19.ParkingPointWatcherBloc>(
      () => _i19.ParkingPointWatcherBloc(get<_i12.IParkingPointFacade>()));
  gh.factory<_i20.RegisterFormBloc>(
      () => _i20.RegisterFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i21.UserProfileBloc>(
      () => _i21.UserProfileBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i22.UserProfileFormBloc>(
      () => _i22.UserProfileFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(get<_i8.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}
