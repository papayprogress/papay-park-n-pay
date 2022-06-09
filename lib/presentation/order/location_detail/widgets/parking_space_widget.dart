import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/order/order_cubit.dart';
import 'package:papay/application/parking_point_watcher/parking_point_watcher_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_theme.dart';

class ParkingSpaceWidget extends StatelessWidget {
  const ParkingSpaceWidget(
      {Key? key, required this.locationId, this.selectedSpotId = ""})
      : super(key: key);

  final String locationId;
  final String? selectedSpotId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ParkingPointWatcherBloc>()
        ..add(ParkingPointWatcherEvent.watchAllStarted(locationId)),
      child: BlocConsumer<ParkingPointWatcherBloc, ParkingPointWatcherState>(
        listener: (context, state) {
          state.maybeMap(
            loadSuccess: (data) {
              final count = data.parkingPoint.where((e) => !e.status).length;
              context.read<OrderCubit>().changeAvailableSpot(count);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return Container(
                height: 200,
                color: AppColor.greyPrimary,
              );
            },
            loadInProgress: (_) {
              return Container(
                height: 200,
                color: AppColor.greyPrimary,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            },
            loadSuccess: (data) {
              return GridView.count(
                padding: const EdgeInsets.all(30),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  for (final parkingPoint in data.parkingPoint)
                    if (parkingPoint.status)
                      // Center(
                      //   child: FaIcon(parkingPoint.vehicleType == 1
                      //       ? FontAwesomeIcons.bus
                      //       : FontAwesomeIcons.car),
                      // )
                      Center(
                        child: Image.asset(
                            'assets/cars/car-${parkingPoint.vehicleType}.png'),
                      )
                    else
                      InkWell(
                        onTap: () {
                          context.read<OrderCubit>().selectSpot(parkingPoint);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedSpotId == parkingPoint.id!
                                ? AppColor.lightPrimary
                                : null,
                            border: selectedSpotId == parkingPoint.id
                                ? Border.all(
                                    color: AppColor.primary,
                                    width: 3,
                                  )
                                : null,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              parkingPoint.name,
                              style: TextStyle(
                                color: selectedSpotId == parkingPoint.id
                                    ? AppColor.white
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ),
                ],
              );
            },
            loadFailure: (e) {
              return Container(
                height: 200,
                color: Colors.red,
                child: Center(
                  child: Text(
                    e.parkingPointFailure.map(
                      unexpected: (_) {
                        return 'Unexpected Error';
                      },
                      inSufficientPermission: (_) {
                        return 'Insufficent Error';
                      },
                      unableToUpdate: (_) {
                        return 'Unable to Update Error';
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
