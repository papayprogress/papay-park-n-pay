// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    OnboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OnboardPage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterPage());
    },
    RegisterSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterSuccessPage());
    },
    ForgotRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ForgotPage());
    },
    NotificationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NotificationPage());
    },
    AppLayoutRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppLayoutPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    LocationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LocationPage());
    },
    LocationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<LocationDetailRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LocationDetailPage(key: args.key, id: args.id));
    },
    LocationPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<LocationPaymentRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LocationPaymentPage(key: args.key, id: args.id));
    },
    InvoiceSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const InvoiceSuccessPage());
    },
    HistoryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryDetailPage());
    },
    PaymentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PaymentPage());
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(OnboardRoute.name, path: '/onboard-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(RegisterRoute.name, path: '/register-page'),
        RouteConfig(RegisterSuccessRoute.name, path: '/register-success-page'),
        RouteConfig(ForgotRoute.name, path: '/forgot-page'),
        RouteConfig(NotificationRoute.name, path: '/notification-page'),
        RouteConfig(AppLayoutRoute.name, path: '/app-layout-page'),
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(LocationRoute.name, path: '/location-page'),
        RouteConfig(LocationDetailRoute.name, path: '/location-detail-page'),
        RouteConfig(LocationPaymentRoute.name, path: '/location-payment-page'),
        RouteConfig(InvoiceSuccessRoute.name, path: '/invoice-success-page'),
        RouteConfig(HistoryRoute.name, path: '/history-page'),
        RouteConfig(HistoryDetailRoute.name, path: '/history-detail-page'),
        RouteConfig(PaymentRoute.name, path: '/payment-page'),
        RouteConfig(SettingRoute.name, path: '/setting-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [OnboardPage]
class OnboardRoute extends PageRouteInfo<void> {
  const OnboardRoute() : super(OnboardRoute.name, path: '/onboard-page');

  static const String name = 'OnboardRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [RegisterSuccessPage]
class RegisterSuccessRoute extends PageRouteInfo<void> {
  const RegisterSuccessRoute()
      : super(RegisterSuccessRoute.name, path: '/register-success-page');

  static const String name = 'RegisterSuccessRoute';
}

/// generated route for
/// [ForgotPage]
class ForgotRoute extends PageRouteInfo<void> {
  const ForgotRoute() : super(ForgotRoute.name, path: '/forgot-page');

  static const String name = 'ForgotRoute';
}

/// generated route for
/// [NotificationPage]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: '/notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [AppLayoutPage]
class AppLayoutRoute extends PageRouteInfo<void> {
  const AppLayoutRoute() : super(AppLayoutRoute.name, path: '/app-layout-page');

  static const String name = 'AppLayoutRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LocationPage]
class LocationRoute extends PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [LocationDetailPage]
class LocationDetailRoute extends PageRouteInfo<LocationDetailRouteArgs> {
  LocationDetailRoute({Key? key, required int id})
      : super(LocationDetailRoute.name,
            path: '/location-detail-page',
            args: LocationDetailRouteArgs(key: key, id: id));

  static const String name = 'LocationDetailRoute';
}

class LocationDetailRouteArgs {
  const LocationDetailRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'LocationDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [LocationPaymentPage]
class LocationPaymentRoute extends PageRouteInfo<LocationPaymentRouteArgs> {
  LocationPaymentRoute({Key? key, required int id})
      : super(LocationPaymentRoute.name,
            path: '/location-payment-page',
            args: LocationPaymentRouteArgs(key: key, id: id));

  static const String name = 'LocationPaymentRoute';
}

class LocationPaymentRouteArgs {
  const LocationPaymentRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'LocationPaymentRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [InvoiceSuccessPage]
class InvoiceSuccessRoute extends PageRouteInfo<void> {
  const InvoiceSuccessRoute()
      : super(InvoiceSuccessRoute.name, path: '/invoice-success-page');

  static const String name = 'InvoiceSuccessRoute';
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: '/history-page');

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [HistoryDetailPage]
class HistoryDetailRoute extends PageRouteInfo<void> {
  const HistoryDetailRoute()
      : super(HistoryDetailRoute.name, path: '/history-detail-page');

  static const String name = 'HistoryDetailRoute';
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting-page');

  static const String name = 'SettingRoute';
}
