import 'package:flutter/material.dart';

import 'circle_icon_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CircleIconButton(icon: Icons.menu),
        CircleIconButton(icon: Icons.notifications_none),
      ],
    );
  }
}
