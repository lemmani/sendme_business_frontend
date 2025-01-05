
import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '75%',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                  color: Color(0xFF3A353A),
                ),
              ),
              Icon(Icons.check_circle_outline, size: 24),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(9999),
            child: const LinearProgressIndicator(
              value: 0.75,
              backgroundColor: Color(0xFFB4F6FD),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0F52BA)),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}