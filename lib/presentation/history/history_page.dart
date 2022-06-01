import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "History Page",
                    style: AppFont.headline3,
                  ),
                  subtitle: Text(
                    "Menampilkan histori setiap kali parkir",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyOrange),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColor.orange,
                    child: IconButton(
                      color: AppColor.white,
                      onPressed: () {
                        context.router.push(const NotificationRoute());
                      },
                      icon: const Icon(Icons.notifications),
                    ),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 16),
                for (int i = 0; i < 3; i++) ...[
                  const SizedBox(height: 16),
                  Text('Bulan ke $i'),
                  for (int i = 0; i < 3; i++)
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      onTap: () {
                        context.router.push(const HistoryDetailRoute());
                      },
                      leading: const CircleAvatar(
                        backgroundColor: AppColor.orange,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
