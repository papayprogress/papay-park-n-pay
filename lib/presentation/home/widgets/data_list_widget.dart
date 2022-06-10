import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';

class DataListWidget extends StatelessWidget {
  const DataListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Parking History'),
            InkWell(
              onTap: () {
                context.read<MainLayoutCubit>().changePage(3);
              },
              child: const Text('Lihat Semua'),
            ),
          ],
        ),
        for (int i = 0; i < 3; i++)
          ListTile(
            onTap: () {},
            // contentPadding: const EdgeInsets.symmetric(
            //   horizontal: 30,
            //   vertical: 8,
            // ),
            leading: const CircleAvatar(
              backgroundColor: AppColor.primary,
              child: Text(
                'A',
                style: TextStyle(color: AppColor.white),
              ),
            ),
            title: Text('AHASS $i'),
            subtitle: Text('27 Maret 202$i'),
            trailing: Text(
              'Rp. ${i}45.000',
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
