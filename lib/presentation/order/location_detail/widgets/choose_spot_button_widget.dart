import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/presentation/routes/app_router.dart';

class ChooseSpotButtonWidget extends StatelessWidget {
  const ChooseSpotButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      buildWhen: (p, c) => p.selectedSpot != c.selectedSpot,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: state.canOrder
                  ? null
                  : () {
                      context.read<OrderCubit>().changePage(Status.isPaying);
                    },
              child: Text("Choose ${state.selectedSpot?.name ?? ''}"),
            ),
          ),
        );
      },
    );
  }
}
