import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class NearestDataListWidget extends StatelessWidget {
  const NearestDataListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Nearest From You'),
              InkWell(
                onTap: () {},
                child: const Text('Lihat Semua'),
              ),
            ],
          ),
        ),
        for (int i = 0; i < 3; i++)
          ListTile(
            onTap: () {
              context.router.push(LocationDetailRoute(id: i));
            },
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 8,
            ),
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
