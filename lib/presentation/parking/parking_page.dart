import 'package:flutter/material.dart';

class ParkingPage extends StatelessWidget {
  const ParkingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Parking Page'),
        ),
      ),
    );
  }
}
