
import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pickup Address*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: Color(0xFF3A353A),
              letterSpacing: 0.1,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Freetown, Macdonalds Street, "2 Macdonalds Street"',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xFF3A353A),
                      letterSpacing: -0.48,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/309ef82363fbb2916cb0005cab5d13cda728cb0ed12de4b27b02bcefdb3e7b29?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}