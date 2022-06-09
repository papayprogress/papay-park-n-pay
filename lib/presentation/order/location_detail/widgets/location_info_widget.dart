import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/presentation/core/app_theme.dart';

class LocationInfoWidget extends StatelessWidget {
  const LocationInfoWidget({
    Key? key,
    required this.rate,
    required this.size,
    required this.available,
  }) : super(key: key);

  final String rate;
  final String size;
  final int available;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 24,
      ),
      color: AppColor.lightPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: [
                const FaIcon(
                  FontAwesomeIcons.moneyBill,
                  color: AppColor.darkerBlack,
                ),
                const SizedBox(height: 8),
                Text(
                  'Rp. $rate',
                  style: const TextStyle(color: AppColor.darkerBlack),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Per Hour',
                  style: TextStyle(color: AppColor.darkerBlack),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const FaIcon(
                  FontAwesomeIcons.map,
                  color: AppColor.darkerBlack,
                ),
                const SizedBox(height: 8),
                Text(
                  '$size m',
                  style: const TextStyle(color: AppColor.darkerBlack),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Per Spot',
                  style: TextStyle(color: AppColor.darkerBlack),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const FaIcon(
                  FontAwesomeIcons.squareParking,
                  color: AppColor.darkerBlack,
                ),
                const SizedBox(height: 8),
                Text(
                  '$available Spot',
                  style: const TextStyle(color: AppColor.darkerBlack),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Available',
                  style: TextStyle(color: AppColor.darkerBlack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
