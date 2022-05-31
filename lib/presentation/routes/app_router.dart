import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:papay/presentation/splash/splash_page.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
