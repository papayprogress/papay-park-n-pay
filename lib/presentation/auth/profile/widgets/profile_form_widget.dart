import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/user_profile_form/user_profile_form_bloc.dart';
import 'package:papay/domain/auth/app_user.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class ProfileFormWidget extends StatefulWidget {
  const ProfileFormWidget({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  State<ProfileFormWidget> createState() => _ProfileFormWidgetState();
}

class _ProfileFormWidgetState extends State<ProfileFormWidget> {
  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;

  bool isObsecure = true;
  bool isObsecure2 = true;

  @override
  void initState() {
    fullnameController = TextEditingController(text: widget.appUser.name);
    emailController = TextEditingController(text: widget.appUser.email);
    phoneController = TextEditingController(text: widget.appUser.phone);
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocConsumer<UserProfileFormBloc, UserProfileFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server Error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email an password combination',
                      unexpected: (_) =>
                          'Unexpected Error Occured. Please Contact Support',
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Profile Updated',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.all(30),
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Profil",
                  style: AppFont.headline2,
                ),
                subtitle: Text(
                  "Ubah pengaturan dari profilmu",
                  style: AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColor.primary,
                  child: IconButton(
                    color: AppColor.white,
                    onPressed: () {
                      context.router.push(const NotificationRoute());
                    },
                    icon: const Icon(Icons.notifications),
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 30),
              const CircleAvatar(radius: 50),
              const SizedBox(height: 30),
              const Text(
                'Nama Lengkap',
                style: AppFont.formLabel,
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: fullnameController,
                decoration: const InputDecoration(
                  hintText: 'Nama Lengkap',
                ),
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context
                      .read<UserProfileFormBloc>()
                      .add(UserProfileFormEvent.fullnameChanged(value));
                },
                validator: (_) {
                  return context
                      .read<UserProfileFormBloc>()
                      .state
                      .fullname
                      .value
                      .fold(
                        (l) => l.maybeMap(
                          empty: (_) => 'Invalid Fullname',
                          orElse: () => null,
                        ),
                        (r) => null,
                      );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'No. HP',
                style: AppFont.formLabel,
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: 'No. HP',
                ),
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context
                      .read<UserProfileFormBloc>()
                      .add(UserProfileFormEvent.phoneChanged(value));
                },
                validator: (_) {
                  return context
                      .read<UserProfileFormBloc>()
                      .state
                      .phone
                      .value
                      .fold(
                        (l) => l.maybeMap(
                          empty: (_) => 'Invalid Phone',
                          orElse: () => null,
                        ),
                        (r) => null,
                      );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Email',
                style: AppFont.formLabel,
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email atau Username',
                ),
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context
                      .read<UserProfileFormBloc>()
                      .add(UserProfileFormEvent.emailChanged(value));
                },
                validator: (_) {
                  return context
                      .read<UserProfileFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (l) => l.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (r) => null,
                      );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Kata Sandi Baru',
                style: AppFont.formLabel,
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: passwordController,
                obscureText: isObsecure,
                decoration: InputDecoration(
                  hintText: 'Kata Sandi Baru',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                    icon: Icon(
                      isObsecure ? Icons.lock : Icons.lock_open,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context
                      .read<UserProfileFormBloc>()
                      .add(UserProfileFormEvent.passwordChanged(value));
                },
                validator: (_) {
                  return context
                      .read<UserProfileFormBloc>()
                      .state
                      .password
                      ?.value
                      .fold(
                        (l) => l.maybeMap(
                          sameValue: (_) => 'Invalid Password',
                          shortPassword: (_) => 'Password must > 6 characters',
                          orElse: () => null,
                        ),
                        (r) => null,
                      );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Konfirmasi Kata Sandi',
                style: AppFont.formLabel,
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: passwordConfirmController,
                obscureText: isObsecure2,
                decoration: InputDecoration(
                  hintText: 'Konfirmasi Kata Sandi Baru',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObsecure2 = !isObsecure2;
                      });
                    },
                    icon: Icon(
                      isObsecure2 ? Icons.lock : Icons.lock_open,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context.read<UserProfileFormBloc>().add(
                      UserProfileFormEvent.passwordConfirmationChanged(value));
                },
                validator: (_) {
                  return context
                      .read<UserProfileFormBloc>()
                      .state
                      .passwordConfirmation
                      ?.value
                      .fold(
                        (l) => l.maybeMap(
                          sameValue: (_) => 'Invalid Password',
                          shortPassword: (_) => 'Password must > 6 characters',
                          orElse: () => null,
                        ),
                        (r) => null,
                      );
                },
              ),
              const SizedBox(height: 30),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<UserProfileFormBloc>()
                        .add(const UserProfileFormEvent.updateProfilePressed());
                  },
                  child: const Text('Ubah Profil'),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(),
              ],
              const SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: OutlinedButton(
                  onPressed: () {
                    context.router.push(const SettingRoute());
                  },
                  child: const Text('Pengaturan'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
