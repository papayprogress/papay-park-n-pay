import 'package:flutter/material.dart';
import 'package:papay/presentation/location/widgets/location_map_widget.dart';
import 'package:papay/presentation/location/widgets/nearest_data_list_widget.dart';
import 'package:papay/presentation/location/widgets/search_location_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: false,
                expandedHeight: MediaQuery.of(context).size.height / 2,
                flexibleSpace: Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: const LocationMapWidget(),
                  ),
                ),
              ),
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  const [
                    SizedBox(height: 30),
                    SearchLocationWidget(),
                    SizedBox(height: 30),
                    NearestDataListWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
