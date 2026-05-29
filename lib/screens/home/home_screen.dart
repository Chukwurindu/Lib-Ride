import 'package:flutter/material.dart';

import '../../widgets/buttons/top_bar.dart';
import '../../widgets/cards/ride_card.dart';
import '../../widgets/layout/bottom_area.dart';
import '../../widgets/layout/location_chips.dart';
import '../../widgets/layout/side_actions.dart';
import '../../widgets/map/map_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MapBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const TopBar(),
                  const SizedBox(height: 24),
                  const LocationChips(),
                  const SizedBox(height: 24),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        RideCard(),
                        Positioned(
                          right: 0,
                          child: SideActions(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomArea(),
          ),
        ],
      ),
    );
  }
}
