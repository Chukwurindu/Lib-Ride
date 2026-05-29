import 'dart:ui';

import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import 'map_dot.dart';

class MapBackground extends StatelessWidget {
  const MapBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFE8F0E8), Color(0xFFDAE8D8)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 120,
            left: 24,
            right: 24,
            child: Opacity(
              opacity: 0.18,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                child: Container(
                  height: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.panelBackground,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 140,
            left: 36,
            child: MapDot(color: AppColors.accent),
          ),
          const Positioned(
            top: 240,
            right: 52,
            child: MapDot(color: AppColors.accent),
          ),
          const Positioned(
            top: 320,
            left: 90,
            child: MapDot(color: AppColors.accent),
          ),
          const Positioned(
            top: 190,
            left: 120,
            child: MapDot(color: AppColors.primary),
          ),
          const Positioned(
            top: 330,
            right: 122,
            child: MapDot(color: AppColors.primary),
          ),
          Positioned(
            top: 100,
            left: 70,
            right: 70,
            child: Center(
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, size: 56, color: AppColors.accent),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
