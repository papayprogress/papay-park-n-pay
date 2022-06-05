import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationPaymentPage extends StatefulWidget {
  const LocationPaymentPage({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  State<LocationPaymentPage> createState() => LocationPaymentStatePage();
}

class LocationPaymentStatePage extends State<LocationPaymentPage> {
  late TextEditingController referralController;
  int selectedTime = 0;
  int selectedPayment = 0;

  @override
  void initState() {
    referralController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    referralController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Parkiran ${widget.id}",
                style: AppFont.headline2,
              ),
              subtitle: Text(
                "Alamat jl. 1234 abcd ${widget.id}",
                style: AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
              ),
              trailing: CircleAvatar(
                backgroundColor: AppColor.primary,
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
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(5),
              },
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text('Parking Time'),
                    ),
                    const TableCell(
                      child: Text(':'),
                    ),
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (selectedTime > 1) {
                                setState(() {
                                  selectedTime--;
                                });
                              }
                            },
                            icon: const Icon(Icons.minimize),
                          ),
                          Text('$selectedTime Hour'),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedTime++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const TableRow(children: [
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                ]),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text('Referral Code'),
                    ),
                    const TableCell(
                      child: Text(':'),
                    ),
                    TableCell(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Input Code',
                        ),
                        autocorrect: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {},
                        validator: (_) {
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const TableRow(children: [
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                ]),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text('Pay With'),
                    ),
                    const TableCell(
                      child: Text(':'),
                    ),
                    TableCell(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Payment Type',
                        ),
                        autocorrect: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {},
                        validator: (_) {
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const TableRow(children: [
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                ]),
                const TableRow(
                  children: [
                    TableCell(
                      child: Text('Admin'),
                    ),
                    TableCell(
                      child: Text(':'),
                    ),
                    TableCell(
                      child: Text('RP. 500'),
                    ),
                  ],
                ),
                const TableRow(
                  children: [
                    SizedBox(height: 24),
                    SizedBox(height: 24),
                    SizedBox(height: 24),
                  ],
                ),
                const TableRow(
                  children: [
                    TableCell(
                      child: Text('Total Cost'),
                    ),
                    TableCell(
                      child: Text(':'),
                    ),
                    TableCell(
                      child: Text('RP. 20.000'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  // context.router.pushAndPopUntil(const InvoiceSuccessRoute(),
                  //     predicate: (route) => route == LocationDetailRoute.name);
                  context.router.replace(const InvoiceSuccessRoute());
                },
                child: const Text("Book For Rp. 6500"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
