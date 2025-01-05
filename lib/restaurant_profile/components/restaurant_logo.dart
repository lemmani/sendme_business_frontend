
import 'package:flutter/material.dart';

class RestaurantLogo extends StatelessWidget {
  const RestaurantLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Restaurant Logo',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3A353A),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFDCDCDC), width: 2),
            color: const Color(0xFFF3F4F6),
          ),
          child: const Center(
            child: Icon(
              Icons.add_photo_alternate,
              size: 48,
              color: Color(0xFF0F52BA),
            ),
          ),
        ),
      ],
    );
  }
}