import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/home/widgets/action_block_widget.dart';
import 'package:papay/presentation/home/widgets/cta_block_widget.dart';
import 'package:papay/presentation/home/widgets/hello_block_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Positioned(
            //   bottom: -100,
            //   right: -60,
            //   child: Image.asset('assets/other/gear.png'),
            // ),
            ListView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: [
                const HelloBlockWidget(),
                const SizedBox(height: 30),
                const CTABlockWidget(),
                const SizedBox(height: 30),
                const ActionBlocWidget(),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Histori Terbaru'),
                      TextButton(
                        onPressed: () {
                          context.read<MainLayoutCubit>().changePage(3);
                        },
                        child: const Text('Lihat Semua'),
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < 3; i++)
                  ListTile(
                    onTap: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}
