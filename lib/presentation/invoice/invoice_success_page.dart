import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class InvoiceSuccessPage extends StatelessWidget {
  const InvoiceSuccessPage({Key? key}) : super(key: key);

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
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Booking Success',
                    style: AppFont.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Make sure to park on the right spot',
                    style: AppFont.subhead3.copyWith(
                      color: AppColor.greyPrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Chip(
                    backgroundColor: AppColor.primary,
                    label: Text(
                      'Kode Tiket: 18239172389',
                      style: TextStyle(color: AppColor.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: 200,
                    height: 200,
                    child: Placeholder(),
                  ),
                  const SizedBox(height: 32),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Unduh Tiket'),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Note: the QR code work as proof of booking to the parking lot owner if an error occurs',
                    style: AppFont.subhead3.copyWith(
                      color: AppColor.greyPrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('View Booking Detail'),
                    ),
                  ),
                  const SizedBox(height: 16),
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
            ),
          ],
        ),
      ),
    );
  }
}
