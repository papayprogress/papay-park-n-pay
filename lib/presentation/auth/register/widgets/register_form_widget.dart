import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/application/auth/auth_bloc.dart';
import 'package:papay/application/auth/login_form/login_form_bloc.dart';
import 'package:papay/application/auth/register_form/register_form_bloc.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
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
              context.router.replace(const RegisterSuccessRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Form(
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: [
                  const Text(
                    'Create an Account',
                    style: AppFont.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Input data to make new account',
                    style: AppFont.subhead3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  // Center(
                  //   child: Image.asset('assets/illustrations/register.png'),
                  // ),
                  const SizedBox(height: 32),
                  const Text(
                    'Full Name',
                    style: AppFont.formLabel,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your full name',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.fullnameChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .fullname
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Fullname',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Phone Number',
                    style: AppFont.formLabel,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your phone number',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.phoneChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .phone
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Phone',
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
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.emailChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Email Address',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Password',
                    style: AppFont.formLabel,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
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
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.passwordChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 32),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<RegisterFormBloc>().add(
                            const RegisterFormEvent
                                .registerWithEmailAndPasswordPressed());
                      },
                      child: const Text('Register'),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    'or',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        context
                            .read<LoginFormBloc>()
                            .add(const LoginFormEvent.loginWithGooglePressed());
                      },
                      icon: const FaIcon(FontAwesomeIcons.google),
                      label: const Text('Register with Google'),
                    ),
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(),
                  ],
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: TextButton(
                      onPressed: () {
                        context.router.replace(const LoginRoute());
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Sudah memiliki akun?',
                          style: TextStyle(color: AppColor.greyPrimary),
                          children: [
                            TextSpan(
                              text: ' Masuk',
                              style: TextStyle(
                                color: AppColor.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
