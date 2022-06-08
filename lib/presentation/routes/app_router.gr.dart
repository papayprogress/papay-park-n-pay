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
    OrderWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<OrderWrapperRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: OrderWrapperPage(key: args.key, idLocation: args.idLocation));
    },
    HistoryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryDetailPage());
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    },
    LocationDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LocationDetailPage());
    },
    PaymentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PaymentPage());
    },
    InvoiceSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const InvoiceSuccessPage());
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
        RouteConfig(OrderWrapperRoute.name,
            path: '/order-wrapper-page',
            children: [
              RouteConfig(LocationDetailRoute.name,
                  path: 'location-detail-page', parent: OrderWrapperRoute.name),
              RouteConfig(PaymentRoute.name,
                  path: 'payment-page', parent: OrderWrapperRoute.name),
              RouteConfig(InvoiceSuccessRoute.name,
                  path: 'invoice-success-page', parent: OrderWrapperRoute.name)
            ]),
        RouteConfig(HistoryRoute.name, path: '/history-page'),
        RouteConfig(HistoryDetailRoute.name, path: '/history-detail-page'),
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
/// [OrderWrapperPage]
class OrderWrapperRoute extends PageRouteInfo<OrderWrapperRouteArgs> {
  OrderWrapperRoute(
      {Key? key, required int idLocation, List<PageRouteInfo>? children})
      : super(OrderWrapperRoute.name,
            path: '/order-wrapper-page',
            args: OrderWrapperRouteArgs(key: key, idLocation: idLocation),
            initialChildren: children);

  static const String name = 'OrderWrapperRoute';
}

class OrderWrapperRouteArgs {
  const OrderWrapperRouteArgs({this.key, required this.idLocation});

  final Key? key;

  final int idLocation;

  @override
  String toString() {
    return 'OrderWrapperRouteArgs{key: $key, idLocation: $idLocation}';
  }
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
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting-page');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [LocationDetailPage]
class LocationDetailRoute extends PageRouteInfo<void> {
  const LocationDetailRoute()
      : super(LocationDetailRoute.name, path: 'location-detail-page');

  static const String name = 'LocationDetailRoute';
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: 'payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [InvoiceSuccessPage]
class InvoiceSuccessRoute extends PageRouteInfo<void> {
  const InvoiceSuccessRoute()
      : super(InvoiceSuccessRoute.name, path: 'invoice-success-page');

  static const String name = 'InvoiceSuccessRoute';
}
