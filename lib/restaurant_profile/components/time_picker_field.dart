
import 'package:flutter/material.dart';

class TimePickerField extends StatelessWidget {
  final String label;
  final String value;

  const TimePickerField({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3A353A),
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.info_outline, size: 16),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFDCDCDC)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Icon(Icons.access_time, size: 20, color: Color(0xFF0F52BA)),
              const SizedBox(width: 6),
              Text(
                value,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF0F52BA),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}