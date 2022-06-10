import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/gallery/gallery.dart';
import 'package:papay/domain/gallery/gallery_failure.dart';
import 'package:papay/domain/gallery/i_gallery_facade.dart';

part 'gallery_watcher_event.dart';
part 'gallery_watcher_state.dart';
part 'gallery_watcher_bloc.freezed.dart';

@injectable
class GalleryWatcherBloc
    extends Bloc<GalleryWatcherEvent, GalleryWatcherState> {
  final IGalleryFacade _galleryRepository;

  StreamSubscription<Either<GalleryFailure, List<Gallery>>>?
      _galleryStreamSubscription;

  GalleryWatcherBloc(this._galleryRepository)
      : super(const GalleryWatcherState.initial()) {
    on<GalleryWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const GalleryWatcherState.loadInProgress());
          await _galleryStreamSubscription?.cancel();
          _galleryStreamSubscription = _galleryRepository.watchAll(e.id).listen(
                (failureOrGallery) =>
                    add(GalleryWatcherEvent.galleryReceived(failureOrGallery)),
              );
        },
        galleryReceived: (e) async {
          e.failureOrGallery.fold(
            (l) => emit(GalleryWatcherState.loadFailure(l)),
            (r) => emit(GalleryWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _galleryStreamSubscription?.cancel();
    return super.close();
  }
}
