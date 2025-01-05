
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '50%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xFF3A353A),
                  letterSpacing: 0.15,
                ),
              ),
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/54b42a60b286caf10072f9355989d3e0a4f39ee19a6956249a3dcf16dc1e3058?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
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
            child: Align(
              alignment: Alignment.centerLeft,
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
          ),
        ],
      ),
    );
  }
}