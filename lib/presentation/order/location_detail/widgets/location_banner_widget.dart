import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:papay/application/gallery_watcher/gallery_watcher_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_theme.dart';

class LocationBannerWidget extends StatelessWidget {
  const LocationBannerWidget({Key? key, required this.idLocation})
      : super(key: key);

  final String idLocation;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GalleryWatcherBloc>()
        ..add(GalleryWatcherEvent.watchAllStarted(idLocation)),
      child: BlocBuilder<GalleryWatcherBloc, GalleryWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: AppColor.black,
              );
            },
            loadInProgress: (_) {
              return Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: AppColor.black,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            },
            loadSuccess: (data) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: AppColor.darkerBlack,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      data.galleries[index].imageUrl,
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: data.galleries.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
                // child: Stack(
                //   children: [
                //     Align(
                //       alignment: Alignment.centerLeft,
                //       child: IconButton(
                //         onPressed: () {},
                //         icon: const Icon(
                //           Icons.arrow_circle_left_outlined,
                //           size: 48,
                //           color: AppColor.white,
                //         ),
                //       ),
                //     ),
                //     Align(
                //       alignment: Alignment.centerRight,
                //       child: IconButton(
                //         onPressed: () {},
                //         icon: const Icon(
                //           Icons.arrow_circle_right_outlined,
                //           size: 48,
                //           color: AppColor.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              );
            },
            loadFailure: (e) {
              return Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.red,
                child: Center(
                  child: Text(
                    e.galleryFailure.map(
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
