import 'package:flutter/material.dart';
import 'package:papay/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/notification/notification_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key, this.notificationBloc}) : super(key: key);

  final NotificationBloc? notificationBloc;

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: notificationBloc!),
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _router.defaultRouteParser(),
        routerDelegate: _router.delegate(),
        title: "Papay - Park 'n Play",
        theme: AppTheme.theme(context),
      ),
    );
  }
}
