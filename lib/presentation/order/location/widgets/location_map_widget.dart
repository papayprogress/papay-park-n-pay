import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:papay/domain/location/location.dart';

class LocationMapWidget extends StatefulWidget {
  const LocationMapWidget({Key? key, required this.locations})
      : super(key: key);

  final List<Location> locations;

  @override
  State<LocationMapWidget> createState() => _LocationMapWidgetState();
}

class _LocationMapWidgetState extends State<LocationMapWidget>
    with OSMMixinObserver {
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
  Future<void> mapIsReady(bool isReady) async {
    await mapController.setZoom(zoomLevel: 8);
    if (widget.locations.isNotEmpty) {
      for (final location in widget.locations) {
        await mapController.changeLocation(
          GeoPoint(
            latitude: location.lat,
            longitude: location.lon,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OSMFlutter(
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
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Padding(
                //   child: FloatingActionButton.extended(
                //     onPressed: () {},
                //     heroTag: 'vehicle-type',
                //     label: Row(
                //       children: [
                //         IconButton(
                //           onPressed: () {},
                //           icon: const FaIcon(FontAwesomeIcons.car),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                IconButton(
                  onPressed: () async {
                    await mapController.zoomOut();
                  },
                  icon: const FaIcon(FontAwesomeIcons.circleMinus),
                ),
                IconButton(
                  onPressed: () async {
                    await mapController.zoomIn();
                  },
                  icon: const FaIcon(FontAwesomeIcons.circlePlus),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
