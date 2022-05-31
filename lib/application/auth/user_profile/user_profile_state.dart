part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loadingProgress() = _LoadingProgress;
  const factory UserProfileState.loadSuccess(AppUser user) = _LoadSuccess;
  const factory UserProfileState.loadFailure(AppUserFailure appUserFailure) =
      _LoadFailure;
}
