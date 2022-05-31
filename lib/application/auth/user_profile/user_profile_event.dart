part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.watchProfileStarted() = _WatchProfileStarted;
  const factory UserProfileEvent.profileReceived(
      Either<AppUserFailure, AppUser> failureOrProfile) = _ProfileReceived;
}
