
import 'package:flutter/material.dart';

class ProgressBarNext extends StatelessWidget {
  final double progress;

  const ProgressBarNext({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF3A353A),
                ),
              ),
              const Icon(Icons.info_outline, size: 24, color: Color(0xFF3A353A)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xFFB4F6FD),
          ),
          child: FractionallySizedBox(
            widthFactor: progress,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xFF0F52BA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}