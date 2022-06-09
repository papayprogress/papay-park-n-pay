import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/location_watcher/location_watcher_bloc.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/order/location/widgets/search_location_widget.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocBuilder<LocationWatcherBloc, LocationWatcherState>(
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.all(30),
          children: [
            const SearchLocationWidget(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Nearest From You'),
                InkWell(
                  onTap: () {},
                  child: const Text('Lihat Semua'),
                ),
              ],
            ),
            ...state.map(
              initial: (_) {
                return [
                  Container(
                    color: AppColor.lightPrimary,
                    width: double.infinity,
                    height: 200,
                  ),
                ];
              },
              loadInProgress: (_) {
                return [
                  Container(
                    color: AppColor.lightPrimary,
                    width: double.infinity,
                    height: 200,
                    child: const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                ];
              },
              loadSuccess: (state) {
                return [
                  if (state.location.isEmpty)
                    const Text('Location data is empty')
                  else
                    for (int i = 0; i < state.location.length; i++)
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {
                          context.router.push(
                              OrderWrapperRoute(location: state.location[i]));
                        },
                        leading: const CircleAvatar(
                          backgroundColor: AppColor.primary,
                          child: Text(
                            'A',
                            style: TextStyle(color: AppColor.white),
                          ),
                        ),
                        title: Text(state.location[i].name),
                        subtitle: Text(state.location[i].address),
                        // trailing: Text(
                        //   state.location[i].address,
                        //   style: const TextStyle(color: AppColor.greyPrimary),
                        // ),
                      ),
                ];
              },
              loadFailure: (state) {
                return [
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 200,
                  ),
                ];
              },
            )
          ],
        );
      },
    );
  }
}
