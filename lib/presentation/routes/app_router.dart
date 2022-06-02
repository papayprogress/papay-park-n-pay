import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:papay/presentation/auth/login/login_page.dart';
import 'package:papay/presentation/auth/register/register_page.dart';
import 'package:papay/presentation/auth/register/register_success_page.dart';
import 'package:papay/presentation/auth/forgot/forgot_page.dart';
import 'package:papay/presentation/core/app_layout.dart';
import 'package:papay/presentation/history/history_detail_page.dart';
import 'package:papay/presentation/history/history_page.dart';
import 'package:papay/presentation/home/home_page.dart';
import 'package:papay/presentation/location/location_page.dart';
import 'package:papay/presentation/notification/notification_page.dart';
import 'package:papay/presentation/onboard/onboard_page.dart';
import 'package:papay/presentation/payment/payment_page.dart';
import 'package:papay/presentation/parking/parking_page.dart';
import 'package:papay/presentation/setting/setting_page.dart';
import 'package:papay/presentation/splash/splash_page.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: RegisterSuccessPage),
    AutoRoute(page: ForgotPage),
    AutoRoute(page: NotificationPage),
    AutoRoute(page: AppLayoutPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: ParkingPage),
    AutoRoute(page: HistoryPage),
    AutoRoute(page: HistoryDetailPage),
    AutoRoute(page: LocationPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: SettingPage),
  ],
)
class AppRouter extends _$AppRouter {}
