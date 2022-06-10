import 'package:flutter/material.dart';
import 'package:papay/presentation/routes/app_router.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('Pendaftaran Berhasil'),
              const Text('Cek emailmu untuk aktivasi akun'),
              const SizedBox(height: 8),
              Center(
                child: Image.asset('assets/registration_success.png'),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const LoginRoute());
                  },
                  child: const Text('Kembali ke menu masuk'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
