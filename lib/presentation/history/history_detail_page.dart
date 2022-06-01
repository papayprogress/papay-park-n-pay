import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(30),
              children: [
                const Chip(
                  backgroundColor: AppColor.orange,
                  label: Text(
                    '#NP123JD',
                    style: TextStyle(color: AppColor.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'AHASS Soekarno Hatta',
                  style: AppFont.headline1,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '10 Mei 2022',
                  style: AppFont.subhead2.copyWith(color: AppColor.greyOrange),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Placeholder(),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Catatan',
                  style: AppFont.subhead2,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Detail Reparasi',
                  style: AppFont.subhead2,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 8),
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        const Text('-'),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text('Benerin ini sejumlah $i'),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                const Text(
                  'Total Pembayaran',
                  style: AppFont.subhead2,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 8),
                RichText(
                  text: const TextSpan(
                    text: 'Rp. 280.000',
                    style: TextStyle(color: AppColor.black),
                    children: [
                      TextSpan(
                        text: ' (Sudah dibayar)',
                        style: TextStyle(color: AppColor.orange),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: const Text('Kembali ke Menu Utama'),
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
