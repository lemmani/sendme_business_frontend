
import 'package:flutter/material.dart';

class ProductImageUpload extends StatelessWidget {
  const ProductImageUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Image',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3A353A),
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFDCDCDC), width: 2),
            color: const Color(0xFFF3F4F6),
          ),
          child: const Center(
            child: Icon(Icons.add_photo_alternate_outlined, size: 48),
          ),
        ),
      ],
    );
  }
}