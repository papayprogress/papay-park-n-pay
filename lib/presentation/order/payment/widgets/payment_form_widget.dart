import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';

class PaymentFormWidget extends StatelessWidget {
  const PaymentFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        return Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(5),
          },
          children: [
            TableRow(
              children: [
                const TableCell(
                  child: Text('Parking Time'),
                ),
                const TableCell(
                  child: Text(':'),
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<OrderCubit>().minTime();
                        },
                        icon: const Icon(Icons.minimize),
                      ),
                      Text('${state.selectedTime} Hour'),
                      IconButton(
                        onPressed: () {
                          context.read<OrderCubit>().plusTime();
                          // setState(() {
                          //   selectedTime++;
                          // });
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const TableRow(children: [
              SizedBox(height: 16),
              SizedBox(height: 16),
              SizedBox(height: 16),
            ]),
            TableRow(
              children: [
                const TableCell(
                  child: Text('Referral Code'),
                ),
                const TableCell(
                  child: Text(':'),
                ),
                TableCell(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Input Code',
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context.read<OrderCubit>().changeReferral(value);
                    },
                    validator: (_) {
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const TableRow(children: [
              SizedBox(height: 16),
              SizedBox(height: 16),
              SizedBox(height: 16),
            ]),
            TableRow(
              children: [
                const TableCell(
                  child: Text('Pay With'),
                ),
                const TableCell(
                  child: Text(':'),
                ),
                TableCell(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Payment Type',
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {},
                    validator: (_) {
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const TableRow(children: [
              SizedBox(height: 16),
              SizedBox(height: 16),
              SizedBox(height: 16),
            ]),
            const TableRow(
              children: [
                TableCell(
                  child: Text('Admin'),
                ),
                TableCell(
                  child: Text(':'),
                ),
                TableCell(
                  child: Text('RP. 500'),
                ),
              ],
            ),
            const TableRow(
              children: [
                SizedBox(height: 24),
                SizedBox(height: 24),
                SizedBox(height: 24),
              ],
            ),
            const TableRow(
              children: [
                TableCell(
                  child: Text('Total Cost'),
                ),
                TableCell(
                  child: Text(':'),
                ),
                TableCell(
                  child: Text('RP. 20.000'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
