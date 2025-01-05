
import 'package:flutter/material.dart';

class TextInputFieldNext extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool optional;
  final String? value;
  final bool readOnly;
  final Widget? trailing;

  const TextInputFieldNext({
    Key? key,
    required this.label,
    required this.placeholder,
    this.optional = false,
    this.value,
    this.readOnly = false,
    this.trailing,
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
              if (optional)
                const Text(
                  ' (if any)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7D7D7D),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: value,
                    readOnly: readOnly,
                    decoration: InputDecoration(
                      hintText: placeholder,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7D7D7D),
                    ),
                  ),
                ),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}