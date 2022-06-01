part of 'user_profile_form_bloc.dart';

@freezed
class UserProfileFormEvent with _$UserProfileFormEvent {
  const factory UserProfileFormEvent.started(AppUser appUser) = _Started;
  const factory UserProfileFormEvent.emailChanged(String emailStr) =
      _EmailChanged;
  const factory UserProfileFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory UserProfileFormEvent.passwordConfirmationChanged(
      String passwordConfirmationStr) = _PasswordConfirmationChanged;
  const factory UserProfileFormEvent.phoneChanged(String phoneStr) =
      _PhoneChanged;
  const factory UserProfileFormEvent.addressChanged(String addressStr) =
      _AddressChanged;
  const factory UserProfileFormEvent.fullnameChanged(String fullnameStr) =
      _FullnameChanged;
  const factory UserProfileFormEvent.updateProfilePressed() =
      _UpdateProfilePressed;
}
