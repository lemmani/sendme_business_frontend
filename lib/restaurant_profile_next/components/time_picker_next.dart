
import 'package:flutter/material.dart';

class TimePickerNext extends StatelessWidget {
  final String label;
  final TimeOfDay initialTime;

  const TimePickerNext({
    Key? key,
    required this.label,
    required this.initialTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3A353A),
                ),
              ),
              const Icon(Icons.info_outline, size: 16, color: Color(0xFF3A353A)),
            ],
          ),
          const SizedBox(height: 4),
          InkWell(
            onTap: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: initialTime,
              );
              if (picked != null) {
                // Handle time selection
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFDCDCDC)),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.access_time, color: Color(0xFF0F52BA)),
                  const SizedBox(width: 8),
                  Text(
                    initialTime.format(context),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0F52BA),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}