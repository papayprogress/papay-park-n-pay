import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/auth_bloc.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/car-bg.png'),
            ),
            ListView(
              padding: const EdgeInsets.all(30),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Setting",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Change settings for your apps",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColor.primary,
                    child: IconButton(
                      color: AppColor.white,
                      onPressed: () {
                        context.router.push(const NotificationRoute());
                      },
                      icon: const Icon(Icons.notifications),
                    ),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 16),
                ListTile(
                  onTap: () {
                    context.router.pop();
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.arrow_back,
                    color: AppColor.primary,
                  ),
                  title: const Text("Back to main menu"),
                ),
                ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.lock,
                    color: AppColor.primary,
                  ),
                  title: const Text("Privacy & Policy"),
                ),
                ListTile(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
