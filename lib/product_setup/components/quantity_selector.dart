
import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text(
              'Quantity',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3A353A),
                letterSpacing: 0.1,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.info_outline, size: 16),
          ],
        ),
        Container(
          width: 26,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: const Color(0xFFDCDCDC)),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3A353A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}