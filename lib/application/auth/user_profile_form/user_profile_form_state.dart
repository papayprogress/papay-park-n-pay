part of 'user_profile_form_bloc.dart';

@freezed
class UserProfileFormState with _$UserProfileFormState {
  const factory UserProfileFormState({
    required EmailAddress emailAddress,
    Password? password,
    PasswordConfirmation? passwordConfirmation,
    required Fullname fullname,
    required Phone phone,
    required Address address,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _UserProfileFormState;

  factory UserProfileFormState.initial() => UserProfileFormState(
        emailAddress: EmailAddress(''),
        fullname: Fullname(''),
        phone: Phone(''),
        address: Address(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  factory UserProfileFormState.initialUpdate(AppUser appUser) =>
      UserProfileFormState(
        emailAddress: EmailAddress(appUser.email),
        password: Password(''),
        passwordConfirmation: PasswordConfirmation(compare: '', source: ''),
        fullname: Fullname(appUser.name ?? ''),
        phone: Phone(appUser.phone ?? ''),
        address: Address(appUser.address ?? ''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}