
import 'package:flutter/material.dart';
import '../components/custom_icons_next.dart';

class ProgressBarNext extends StatelessWidget {
  const ProgressBarNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '50%',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3A353A),
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: CustomIconsNext.progressIcon,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999),
              color: const Color(0xFFB4F6FD),
            ),
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  color: const Color(0xFF0F52BA),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}