import 'package:flutter/material.dart';

class LocationField extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool isRequired;

  const LocationField({
    super.key,
    required this.label,
    required this.placeholder,
    this.isRequired = false,
  });

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
                fontWeight: FontWeight.w500,
              ),
            ),
            if (isRequired)
              const Text(
                '*',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            // Handle location picker
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300]!,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    placeholder,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}