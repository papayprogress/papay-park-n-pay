import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              bottom: 0,
              right: 0,
              child: Image.asset('assets/car-bg.png'),
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
                    "Notification",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Show notification every time you parking",
                    style: AppFont.subhead3.copyWith(
                      color: const Color.fromARGB(255, 130, 165, 180),
                    ),
                  ),
                ),
                const Divider(height: 16),
                ...[
                  const SizedBox(height: 32),
                  const Text(
                    '10 Juni 2022',
                    style: AppFont.subhead2,
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red[400],
                      child: const FaIcon(
                        FontAwesomeIcons.wallet,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Finish your Payment',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      'Parkiran Akhdan - A4',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[400],
                      ),
                      child: const Text(
                        'Pay Now',
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red[400],
                      child: const FaIcon(
                        Icons.notification_important,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Park in the right place',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      'Parkiran Akhdan',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: const Text(
                      'Spot A4',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green[400],
                      child: const FaIcon(
                        FontAwesomeIcons.check,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Pembayaran Selesai',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      '#NPR23524',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: const Text(
                      'Rp. 270.000',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                ...[
                  const SizedBox(height: 32),
                  const Text(
                    '10 Juni 2022',
                    style: AppFont.subhead2,
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green[400],
                      child: const FaIcon(
                        FontAwesomeIcons.wallet,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Payment Success!',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      'Parkiran Aghil',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: const Text(
                      'Rp.22.000',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red[400],
                      child: const FaIcon(
                        Icons.notification_important,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Park in the right place',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      'Parkiran Aghil',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: const Text(
                      'Spot C7',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      // context.router.push(HistoryDetailRoute());
                    },
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green[400],
                      child: const FaIcon(
                        FontAwesomeIcons.check,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Success Booking',
                      style: AppFont.subhead3,
                    ),
                    subtitle: Text(
                      '#NPR23524',
                      style: AppFont.paragraph4.copyWith(
                        color: const Color.fromARGB(255, 130, 165, 180),
                      ),
                    ),
                    trailing: const Text(
                      'Spot C7',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
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
