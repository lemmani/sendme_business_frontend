
import 'package:flutter/material.dart';

class DropdownFieldNext extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;

  const DropdownFieldNext({
    Key? key,
    required this.label,
    required this.value,
    required this.items,
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            child: DropdownButtonFormField<String>(
              value: value,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown change
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF3A353A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}