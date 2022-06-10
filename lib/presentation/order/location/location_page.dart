import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/location_watcher/location_watcher_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/order/location/widgets/location_map_widget.dart';
import 'package:papay/presentation/order/location/widgets/location_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationWatcherBloc>()
        ..add(const LocationWatcherEvent.watchAllStarted()),
      child: Scaffold(
        body: SafeArea(
          child: SlidingUpPanel(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            panel: const Center(
              child: LocationWidget(),
            ),
            body: BlocBuilder<LocationWatcherBloc, LocationWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (e) {
                    return Container();
                  },
                  loadInProgress: (e) {
                    return Container();
                  },
                  loadSuccess: (e) {
                    return LocationMapWidget(locations: e.location);
                  },
                  loadFailure: (e) {
                    return Container();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
