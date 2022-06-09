import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/routes/app_router.dart';

class OrderWrapperPage extends StatelessWidget {
  const OrderWrapperPage({Key? key, required this.location}) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OrderCubit>()..selectLocation(location),
        ),
      ],
      child: BlocConsumer<OrderCubit, OrderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return AutoRouter.declarative(
            routes: (routes) => [
              if (state.status == Status.isChoosing)
                const LocationDetailRoute()
              else if (state.status == Status.isPaying)
                const PaymentRoute()
              else
                const InvoiceSuccessRoute(),
            ],
          );
        },
      ),
    );
  }
}
