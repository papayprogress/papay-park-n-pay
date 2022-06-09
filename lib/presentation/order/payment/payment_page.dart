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
        child: ListView(
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
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  context.read<OrderCubit>().changePage(Status.isSuccess);
                },
                child: const Text("Book For Rp. 6500"),
              ),
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
      ),
    );
  }
}
