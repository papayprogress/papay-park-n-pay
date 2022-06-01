import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: -100,
              right: -60,
              child: Image.asset('assets/other/gear.png'),
            ),
            ListView(
              padding: const EdgeInsets.all(30),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: BackButton(
                    onPressed: () {
                      context.router.pop();
                    },
                  ),
                  title: const Text(
                    "Notifikasi",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Lihat Info Terbaru",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyOrange),
                  ),
                ),
                const Divider(height: 16),
                const SizedBox(height: 16),
                for (int i = 0; i < 2; i++) ...[
                  const SizedBox(height: 16),
                  Text(
                    '27 Maret 202$i',
                    style: AppFont.subhead2,
                  ),
                  ListTile(
                    onTap: () {
                      context.router.push(const AppLayoutRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                      child: Icon(
                        Icons.notification_important,
                        color: AppColor.white,
                      ),
                    ),
                    title: const Text(
                      'Urutan Antrian',
                      style: AppFont.subhead3,
                    ),
                    subtitle: const Text(
                      'Sebentar lagi giliranmu!',
                      style: AppFont.paragraph4,
                    ),
                    trailing: const Text('Saat ini: #14'),
                  ),
                  ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                    ),
                    title: const Text(
                      'Servis di AHASS Cibiru',
                      style: AppFont.subhead3,
                    ),
                    subtitle: const Text(
                      '#NPR23524',
                      style: AppFont.paragraph4,
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Lihat Lokasi'),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                    ),
                    title: const Text(
                      'Pembayaran Belum Selesai',
                      style: AppFont.subhead3,
                    ),
                    subtitle: const Text(
                      '#NPR23524',
                      style: AppFont.paragraph4,
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: const Text('Bayar'),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                    ),
                    title: const Text(
                      'Pembayaran Selesai',
                      style: AppFont.subhead3,
                    ),
                    subtitle: const Text(
                      '#NPR23524',
                      style: AppFont.paragraph4,
                    ),
                    trailing: const Text(
                      'Rp. 270.000',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
