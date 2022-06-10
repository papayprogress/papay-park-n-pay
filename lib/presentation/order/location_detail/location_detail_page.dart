import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
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
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
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
                  children: [
                    LocationHeaderWidget(
                      name: state.location!.name,
                      address: state.location!.address,
                    ),
                    LocationBannerWidget(
                      idLocation: state.location!.id!,
                    ),
                    LocationInfoWidget(
                      available: state.availableSpot,
                      rate: state.location!.ratePerHour.toString(),
                      size: state.location!.sizePerSpot,
                    ),
                    ParkingSpaceWidget(
                      locationId: state.location!.id!,
                      selectedSpotId: state.selectedSpot?.id,
                    ),
                    ChooseSpotButtonWidget(
                      canOrder: state.canOrder,
                      selectedName: state.selectedSpot?.name,
                    ),
                    const BackButtonWidget(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
