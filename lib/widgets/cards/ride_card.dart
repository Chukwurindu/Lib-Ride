import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import 'info_tile.dart';
import 'ride_field.dart';

class RideCard extends StatelessWidget {
  const RideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(36),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          RideField(
            icon: Icons.my_location,
            label: 'Pickup',
            value: 'Broad Street, Monrovia',
          ),
          SizedBox(height: 14),
          RideField(
            icon: Icons.location_on,
            label: 'Destination',
            value: 'Sinkor, 12th Street',
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: InfoTile(
                  icon: Icons.calendar_today,
                  label: 'Today, 14:30',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InfoTile(
                  icon: Icons.person,
                  label: '2 Passengers',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
