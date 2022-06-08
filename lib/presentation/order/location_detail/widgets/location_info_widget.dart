import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/presentation/core/app_theme.dart';

class LocationInfoWidget extends StatelessWidget {
  const LocationInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
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
    );
  }
}
