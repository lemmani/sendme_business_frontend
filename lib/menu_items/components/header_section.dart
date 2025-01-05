
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.restaurant_menu, size: 54),
          Row(
            children: [
              Icon(Icons.notifications_none, size: 20),
              SizedBox(width: 4),
              Icon(Icons.settings, size: 16),
              SizedBox(width: 4),
              Icon(Icons.person_outline, size: 25),
            ],
          ),
        ],
      ),
    );
  }
}