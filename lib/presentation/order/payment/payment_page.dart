import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/presentation/order/payment/widgets/payment_form_widget.dart';
import 'package:papay/presentation/order/widgets/location_header_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
                BlocBuilder<OrderCubit, OrderState>(
                  buildWhen: (p, c) => p.location != c.location,
                  builder: (context, state) {
                    return LocationHeaderWidget(
                      hasPadding: false,
                      name: state.location!.name,
                      address: state.location!.address,
                    );
                  },
                ),
                const Divider(),
                const PaymentFormWidget(),
                const SizedBox(height: 32),
                BlocBuilder<OrderCubit, OrderState>(
                  // buildWhen: (p, c) => p.selectedTime != p.selectedTime,
                  builder: (context, state) {
                    return FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          context
                              .read<OrderCubit>()
                              .changePage(Status.isSuccess);
                        },
                        child: Text(
                            "Book For ${state.selectedTime * state.location!.ratePerHour}"),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 32),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<OrderCubit>().changePage(Status.isChoosing);
                    },
                    child: const Text("Kembali"),
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
