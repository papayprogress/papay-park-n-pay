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
