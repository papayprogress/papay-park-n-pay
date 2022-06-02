import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/auth_bloc.dart';
import 'package:papay/application/auth/user_profile/user_profile_bloc.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/application/notification/notification_bloc.dart';
import 'package:papay/domain/core/base_class.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/auth/profile/profile_page.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/history/history_page.dart';
import 'package:papay/presentation/home/home_page.dart';
import 'package:papay/presentation/routes/app_router.dart';
import 'package:papay/presentation/parking/parking_page.dart';

final _children = [
  MenuClass(
    label: 'Home',
    icon: Icons.home,
    page: const HomePage(),
  ),
  MenuClass(
    label: 'Park',
    icon: Icons.car_repair,
    page: const ParkingPage(),
  ),
  MenuClass(
    label: 'Histori',
    icon: Icons.history,
    page: const HistoryPage(),
  ),
  MenuClass(
    label: 'Profil',
    icon: Icons.account_circle,
    page: const ProfilePage(),
  ),
];

class AppLayoutPage extends StatelessWidget {
  const AppLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserProfileBloc>()
            ..add(const UserProfileEvent.watchProfileStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<MainLayoutCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<NotificationBloc, NotificationState>(
            listener: (context, state) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(state.notifications.last.title),
                    content: Text(state.notifications.last.body),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  context.router.replaceAll(const [LoginRoute()]);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<MainLayoutCubit, MainLayoutState>(
          buildWhen: (p, c) => p.currentIndex != c.currentIndex,
          builder: (context, state) {
            return Scaffold(
              body: _children[state.currentIndex].page,
              bottomNavigationBar: Material(
                clipBehavior: Clip.hardEdge,
                color: AppColor.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < _children.length; i++)
                      InkWell(
                        onTap: () {
                          context.read<MainLayoutCubit>().changePage(i);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(
                            _children[i].icon,
                            color: context.read<MainLayoutCubit>().isSelected(i)
                                ? AppColor.primary
                                : AppColor.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
