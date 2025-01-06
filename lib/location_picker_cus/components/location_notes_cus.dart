
import 'package:flutter/material.dart';

class LocationNotesCus extends StatelessWidget {
  const LocationNotesCus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFFDCDCDC)),
              ),
              child: const Text(
                'Tap anywhere on the map to set a location pin',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF7D7D7D),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Additional Notes',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF3A353A),
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFDCDCDC)),
            ),
            child: const TextField(
              maxLines: null,
              decoration: InputDecoration(
                hintText: '2 Macdonalds Street',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7D7D7D),
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.42,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}