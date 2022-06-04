import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/location/widgets/parking_space_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationDetailPage extends StatelessWidget {
  const LocationDetailPage({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(30),
              title: Text(
                "Parkiran $id",
                style: AppFont.headline2,
              ),
              subtitle: Text(
                "Alamat jl. 1234 abcd $id",
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
            Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              color: AppColor.black,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 48,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 48,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              color: AppColor.darkerBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.moneyBill,
                          color: AppColor.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Rp. 2.000',
                          style: TextStyle(color: AppColor.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Per Hour',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.map,
                          color: AppColor.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '4x4 m',
                          style: TextStyle(color: AppColor.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Per Spot',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.squareParking,
                          color: AppColor.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '4 Spot',
                          style: TextStyle(color: AppColor.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Available',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ParkingSpaceWidget(),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Choose Selected"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
