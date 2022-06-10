import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';

class ActionBlocWidget extends StatelessWidget {
  const ActionBlocWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Find Parking Place'),
            InkWell(
              onTap: () {
                context.read<MainLayoutCubit>().changePage(3);
              },
              child: const Text('Lihat Semua'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColor.lightPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.car,
                      color: AppColor.primary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Car',
                      style: AppFont.paragraph4.copyWith(color: AppColor.black),
                    ),
                    const SizedBox(height: 12),
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColor.lightPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.truck,
                      color: AppColor.primary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Truck',
                      style: AppFont.paragraph4.copyWith(color: AppColor.black),
                    ),
                    const SizedBox(height: 12),
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColor.lightPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.busSimple,
                      color: AppColor.primary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Bus',
                      style: AppFont.paragraph4.copyWith(color: AppColor.black),
                    ),
                    const SizedBox(height: 12),
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
