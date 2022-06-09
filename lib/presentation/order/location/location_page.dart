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
          // child: NestedScrollView(
          //   headerSliverBuilder: (context, innerBoxIsScrolled) {
          //     return [
          //       SliverAppBar(
          //         pinned: false,
          //         expandedHeight: MediaQuery.of(context).size.height / 2,
          //         flexibleSpace: const Flexible(
          //           child: LocationMapWidget(),
          //         ),
          //       ),
          //     ];
          //   },
          //   body: const LocationWidget(),
          //   // body: const NearestDataListWidget(),
          // ),
          child: SlidingUpPanel(
            panel: const Center(
              child: LocationWidget(),
            ),
            body: const LocationMapWidget(),
          ),
        ),
      ),
    );
  }
}
