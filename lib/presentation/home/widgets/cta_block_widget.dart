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
      initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
      areaLimit: BoundingBox(
        east: 10.4922941,
        north: 47.8084648,
        south: 45.817995,
        west: 5.9559113,
      ),
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
          initZoom: 12,
          minZoomLevel: 8,
          maxZoomLevel: 1.0,
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
