import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/user_profile/user_profile_bloc.dart';
import 'package:papay/application/auth/user_profile_form/user_profile_form_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/auth/profile/widgets/profile_form_widget.dart';
import 'package:shimmer/shimmer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserProfileBloc>()
        ..add(const UserProfileEvent.watchProfileStarted()),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset('assets/car-bg.png'),
              ),
              BlocBuilder<UserProfileBloc, UserProfileState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) {
                      return Container();
                    },
                    loadingProgress: (_) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.white60,
                        child: const CircleAvatar(),
                      );
                    },
                    loadSuccess: (e) {
                      return BlocProvider(
                        create: (context) => getIt<UserProfileFormBloc>()
                          ..add(UserProfileFormEvent.started(e.user)),
                        child: ProfileFormWidget(appUser: e.user),
                      );
                    },
                    loadFailure: (e) {
                      return ListTile(
                        tileColor: Colors.red,
                        textColor: Colors.white,
                        title: Text(
                          e.appUserFailure.map(
                            unexpected: (_) => 'Unexpected Error',
                            insufficientPermissions: (_) => 'Permission Error',
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
