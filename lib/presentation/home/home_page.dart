import 'package:flutter/material.dart';
import 'package:papay/presentation/home/widgets/action_block_widget.dart';
import 'package:papay/presentation/home/widgets/cta_block_widget.dart';
import 'package:papay/presentation/home/widgets/hello_block_widget.dart';
import 'package:papay/presentation/home/widgets/data_list_widget.dart';
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
              children: const [
                HelloBlockWidget(),
                SizedBox(height: 30),
                CTABlockWidget(),
                SizedBox(height: 30),
                ActionBlocWidget(),
                SizedBox(height: 30),
                DataListWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
