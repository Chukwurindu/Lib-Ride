import 'package:flutter/material.dart';

import '../buttons/action_button.dart';

class SideActions extends StatelessWidget {
  const SideActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        ActionButton(icon: Icons.add),
        SizedBox(height: 14),
        ActionButton(icon: Icons.remove),
        SizedBox(height: 14),
        ActionButton(icon: Icons.my_location),
      ],
    );
  }
}
