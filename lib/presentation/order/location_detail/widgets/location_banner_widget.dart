import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';

class LocationBannerWidget extends StatelessWidget {
  const LocationBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
