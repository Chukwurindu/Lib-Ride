import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class NavItem extends StatelessWidget {
  const NavItem({required this.icon, required this.label, this.active = false, super.key});

  final IconData icon;
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: active ? AppColors.accent : Colors.white70, size: 22),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            color: active ? AppColors.accent : Colors.white60,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
