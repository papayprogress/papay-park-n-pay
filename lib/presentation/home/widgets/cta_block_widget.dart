import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:papay/presentation/core/app_theme.dart';

class CTABlockWidget extends StatefulWidget {
  const CTABlockWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CTABlockWidget> createState() => _CTABlockWidgetState();
}

class _CTABlockWidgetState extends State<CTABlockWidget> {
  late MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController(
      initMapWithUserPosition: false,
      initPosition:
          GeoPoint(latitude: -6.930466341357687, longitude: 107.71779233486427),
    );
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.black,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      // child: Stack(
      //   children: [
      //     const Positioned(
      //       top: -25,
      //       right: -25,
      //       child: CircleAvatar(
      //         radius: 40,
      //         backgroundColor: AppColor.greyPrimary,
      //       ),
      //     ),
      //     const Positioned(
      //       bottom: -25,
      //       left: -25,
      //       child: CircleAvatar(
      //         radius: 40,
      //         backgroundColor: AppColor.greyPrimary,
      //       ),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(30),
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height / 2,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "Terakhir Reparasi",
      //             style: AppFont.subhead2.copyWith(
      //               color: AppColor.white,
      //             ),
      //           ),
      //           const SizedBox(height: 8),
      //           Text(
      //             "20 Maret 2022",
      //             style: AppFont.headline1.copyWith(
      //               color: AppColor.white,
      //             ),
      //           ),
      //           const SizedBox(height: 16),
      //           ElevatedButton(
      //             onPressed: () {
      //               context.read<MainLayoutCubit>().changePage(3);
      //             },
      //             child: const Text('Lihat Histori'),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: OSMFlutter(
          controller: mapController,
          trackMyPosition: false,
          androidHotReloadSupport: true,
          initZoom: 8,
          minZoomLevel: 3,
          maxZoomLevel: 18,
          stepZoom: 1.0,
          userLocationMarker: UserLocationMaker(
            personMarker: const MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: const MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          roadConfiguration: RoadConfiguration(
            startIcon: const MarkerIcon(
              icon: Icon(
                Icons.person,
                size: 64,
                color: Colors.brown,
              ),
            ),
            roadColor: Colors.yellowAccent,
          ),
          markerOption: MarkerOption(
            defaultMarker: const MarkerIcon(
              icon: Icon(
                Icons.person_pin_circle,
                color: Colors.blue,
                size: 56,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
