import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';

class CTABlockWidget extends StatelessWidget {
  const CTABlockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.black,
      child: Stack(
        children: [
          const Positioned(
            top: -25,
            right: -25,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColor.greyOrange,
            ),
          ),
          const Positioned(
            bottom: -25,
            left: -25,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColor.greyOrange,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terakhir Reparasi",
                  style: AppFont.subhead2.copyWith(
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "20 Maret 2022",
                  style: AppFont.headline1.copyWith(
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<MainLayoutCubit>().changePage(3);
                  },
                  child: const Text('Lihat Histori'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
