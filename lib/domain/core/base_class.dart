import 'package:flutter/widgets.dart';

class MenuClass {
  MenuClass({
    required this.label,
    required this.icon,
    required this.page,
  });

  final String label;
  final IconData icon;
  final Widget page;
}

class OnboardClass {
  final String title;
  final String description;
  final String image;

  OnboardClass({
    required this.title,
    required this.description,
    required this.image,
  });
}
