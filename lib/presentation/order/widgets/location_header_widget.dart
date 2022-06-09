import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationHeaderWidget extends StatelessWidget {
  const LocationHeaderWidget({
    Key? key,
    this.hasPadding = true,
    required this.name,
    required this.address,
  }) : super(key: key);

  final bool hasPadding;
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return ListTile(
      contentPadding: hasPadding ? const EdgeInsets.all(32) : EdgeInsets.zero,
      title: Text(
        "Parkiran $name",
        style: AppFont.headline2,
      ),
      subtitle: Text(
        address,
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
  }
}
