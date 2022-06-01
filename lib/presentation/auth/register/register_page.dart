import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papay/application/auth/register_form/register_form_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/auth/register/widgets/register_form_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterFormBloc>(),
      child: const RegisterFormWidget(),
    );
  }
}
