import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/firebase_options.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_widget.dart';

void main() async {
  configureInjection(Environment.prod);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(AppWidget());
}
