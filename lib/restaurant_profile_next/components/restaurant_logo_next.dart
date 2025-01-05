
import 'package:flutter/material.dart';

class RestaurantLogoNext extends StatelessWidget {
  const RestaurantLogoNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Restaurant Logo',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF3A353A),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 160,
          height: 160,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFDCDCDC), width: 2),
            color: const Color(0xFFF3F4F6),
          ),
          child: const Center(
            child: Icon(Icons.add_a_photo, size: 48, color: Color(0xFF7D7D7D)),
          ),
        ),
      ],
    );
  }
}