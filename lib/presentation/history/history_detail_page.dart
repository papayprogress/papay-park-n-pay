import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                const Text(
                  '#18239172389',
                  style: TextStyle(color: AppColor.lightPrimary),
                ),
                const SizedBox(height: 16),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Parkiran Akhdan",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Spot A3, 10 Maret 2022",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.car,
                    size: 48,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 16),
                const Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Placeholder(),
                  ),
                ),
                const SizedBox(height: 32),
                FractionallySizedBox(
                  widthFactor: 1 / 2,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Unduh Tiket'),
                  ),
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
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: const {
                    0: FlexColumnWidth(3),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(5),
                  },
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Text('Booking ID'),
                        ),
                        TableCell(
                          child: Text(':'),
                        ),
                        TableCell(
                          child: Text('#PAKH2613'),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(height: 16),
                      SizedBox(height: 16),
                      SizedBox(height: 16),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text('Place'),
                        ),
                        TableCell(
                          child: Text(':'),
                        ),
                        TableCell(
                          child: Text('Parkiran Akhdan'),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(height: 16),
                      SizedBox(height: 16),
                      SizedBox(height: 16),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text('Spot'),
                        ),
                        TableCell(
                          child: Text(':'),
                        ),
                        TableCell(
                          child: Text('A3'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text('Day and Date'),
                        ),
                        TableCell(
                          child: Text(':'),
                        ),
                        TableCell(
                          child: Text('Sunday, 10 June 2022'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text('Hours'),
                        ),
                        TableCell(
                          child: Text(':'),
                        ),
                        TableCell(
                          child: Text('3 Hours'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Total COs:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Rp. 240.000',
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 8),
                const Text(
                  '(Sudah Dibayar ✔)',
                  style: TextStyle(color: Colors.green),
                ),
                const SizedBox(height: 32),
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
