import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationHeaderWidget extends StatelessWidget {
  const LocationHeaderWidget({
    Key? key,
    this.hasPadding = true,
  }) : super(key: key);

  final bool hasPadding;

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      buildWhen: (p, c) => p.idLocation != c.idLocation,
      builder: (context, state) {
        return ListTile(
          contentPadding:
              hasPadding ? const EdgeInsets.all(32) : EdgeInsets.zero,
          title: Text(
            "Parkiran ${state.idLocation}",
            style: AppFont.headline2,
          ),
          subtitle: Text(
            "Alamat jl. 1234 abcd ",
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
    );
  }
}
