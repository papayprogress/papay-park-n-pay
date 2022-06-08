import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';

class ParkingSpaceWidget extends StatelessWidget {
  const ParkingSpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      buildWhen: (p, c) => p.selectedSpot != c.selectedSpot,
      builder: (context, state) {
        return GridView.count(
          padding: const EdgeInsets.all(30),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            for (int i = 0; i < dummySpot.length; i++)
              if (i % 2 == 0)
                const Center(
                  child: FaIcon(FontAwesomeIcons.car),
                )
              else if (i % 3 == 0)
                const Center(
                  child: FaIcon(FontAwesomeIcons.bus),
                )
              else
                InkWell(
                  onTap: () {
                    context.read<OrderCubit>().selectSpot(i);
                  },
                  child: Material(
                    color: state.selectedSpot == i ? Colors.blue : null,
                    child: Center(
                      child: Text(
                        dummySpot[i],
                        style: TextStyle(
                          color:
                              state.selectedSpot == i ? AppColor.white : null,
                        ),
                      ),
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}
