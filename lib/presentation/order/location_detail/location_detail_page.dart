import 'package:flutter/material.dart';
import 'package:papay/presentation/order/location_detail/widgets/choose_spot_button_widget.dart';
import 'package:papay/presentation/order/location_detail/widgets/location_banner_widget.dart';
import 'package:papay/presentation/order/location_detail/widgets/location_info_widget.dart';
import 'package:papay/presentation/order/location_detail/widgets/parking_space_widget.dart';
import 'package:papay/presentation/order/widgets/back_button_widget.dart';
import 'package:papay/presentation/order/widgets/location_header_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationDetailPage extends StatelessWidget {
  const LocationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            LocationHeaderWidget(),
            LocationBannerWidget(),
            LocationInfoWidget(),
            ParkingSpaceWidget(),
            ChooseSpotButtonWidget(),
            BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
