import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/user_profile/user_profile_bloc.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';
import 'package:shimmer/shimmer.dart';

class HelloBlockWidget extends StatelessWidget {
  const HelloBlockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loadingProgress: (_) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.white60,
                child: const LinearProgressIndicator(),
              ),
            );
          },
          loadSuccess: (e) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Halo, ${(e.user.name ?? e.user.email).split(" ")[0]}',
                style: AppFont.headline2,
              ),
              subtitle: Text(
                "Selamat Pagi!",
                style: AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
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
            );
          },
          loadFailure: (e) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
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
    );
  }
}
