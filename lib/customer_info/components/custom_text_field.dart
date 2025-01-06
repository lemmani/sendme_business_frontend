import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool isRequired;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.placeholder,
    this.isRequired = false,
    this.keyboardType = TextInputType.text,
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
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: placeholder,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          validator: isRequired
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return '$label is required';
                  }
                  return null;
                }
              : null,
        ),
      ],
    );
  }
}