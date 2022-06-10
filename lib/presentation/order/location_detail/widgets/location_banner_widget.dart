import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/gallery_watcher/gallery_watcher_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_theme.dart';

class LocationBannerWidget extends StatefulWidget {
  const LocationBannerWidget({Key? key, required this.idLocation})
      : super(key: key);

  final String idLocation;

  @override
  State<LocationBannerWidget> createState() => _LocationBannerWidgetState();
}

class _LocationBannerWidgetState extends State<LocationBannerWidget> {
  late CarouselController carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GalleryWatcherBloc>()
        ..add(GalleryWatcherEvent.watchAllStarted(widget.idLocation)),
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
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      carouselController: carouselController,
                      options: CarouselOptions(
                        height: double.infinity,
                        enableInfiniteScroll: true,
                      ),
                      itemCount: data.galleries.length,
                      itemBuilder: (context, itemIndex, pageViewIndex) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            data.galleries[itemIndex].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: IconButton(
                          onPressed: () {
                            carouselController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 48,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: IconButton(
                          onPressed: () {
                            carouselController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 48,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
