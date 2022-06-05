import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/presentation/core/app_theme.dart';

class ParkingSpaceWidget extends StatefulWidget {
  const ParkingSpaceWidget({Key? key}) : super(key: key);

  @override
  State<ParkingSpaceWidget> createState() => _ParkingSpaceWidgetState();
}

class _ParkingSpaceWidgetState extends State<ParkingSpaceWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(30),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        for (int i = 0; i < 16; i++)
          if (i % 2 == 0)
            const Center(
              child: FaIcon(FontAwesomeIcons.car),
            )
          else if (i % 3 == 0)
            const Center(
              child: FaIcon(FontAwesomeIcons.bus),
            )
          else
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = selectedIndex == i ? -1 : i;
                });
              },
              child: Material(
                color: selectedIndex == i ? Colors.blue : null,
                child: Center(
                  child: Text(
                    'A$i',
                    style: TextStyle(
                      color: selectedIndex == i ? AppColor.white : null,
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
