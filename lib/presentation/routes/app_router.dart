import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:papay/domain/history/history.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/presentation/auth/login/login_page.dart';
import 'package:papay/presentation/auth/register/register_page.dart';
import 'package:papay/presentation/auth/register/register_success_page.dart';
import 'package:papay/presentation/auth/forgot/forgot_page.dart';
import 'package:papay/presentation/core/app_layout.dart';
import 'package:papay/presentation/history/history_detail_page.dart';
import 'package:papay/presentation/history/history_page.dart';
import 'package:papay/presentation/home/home_page.dart';
import 'package:papay/presentation/notification/notification_page.dart';
import 'package:papay/presentation/onboard/onboard_page.dart';
import 'package:papay/presentation/order/invoice/invoice_success_page.dart';
import 'package:papay/presentation/order/location/location_page.dart';
import 'package:papay/presentation/order/location_detail/location_detail_page.dart';
import 'package:papay/presentation/order/order_wrapper_page.dart';
import 'package:papay/presentation/order/payment/payment_page.dart';
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
    AutoRoute(page: LocationPage),
    AutoRoute(
      page: OrderWrapperPage,
      children: [
        AutoRoute(page: LocationDetailPage),
        AutoRoute(page: PaymentPage),
        AutoRoute(page: InvoiceSuccessPage),
      ],
    ),
    AutoRoute(page: HistoryPage),
    AutoRoute(page: HistoryDetailPage),
    AutoRoute(page: SettingPage),
  ],
)
class AppRouter extends _$AppRouter {}
