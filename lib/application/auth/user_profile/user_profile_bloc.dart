import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/auth/app_user.dart';
import 'package:papay/domain/auth/app_user_failure.dart';
import 'package:papay/domain/auth/i_auth_facade.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IAuthFacade _authFacade;

  StreamSubscription<Either<AppUserFailure, AppUser>>? _streamSubscription;

  UserProfileBloc(this._authFacade) : super(const UserProfileState.initial()) {
    on<UserProfileEvent>((event, emit) async {
      await event.map(
        watchProfileStarted: (e) async {
          emit(const UserProfileState.loadingProgress());
          await _streamSubscription?.cancel();
          _streamSubscription =
              _authFacade.watchUserProfile().listen((failureOrProfile) {
            add(UserProfileEvent.profileReceived(failureOrProfile));
          });
        },
        profileReceived: (e) async {
          emit(e.failureOrProfile.fold(
            (l) => UserProfileState.loadFailure(l),
            (r) => UserProfileState.loadSuccess(r),
          ));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
