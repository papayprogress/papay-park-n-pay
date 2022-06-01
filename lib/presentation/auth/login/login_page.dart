import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/login_form/login_form_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/auth/login/widgets/login_form_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginFormBloc>(),
      child: const LoginFormWidget(),
    );
  }
}
