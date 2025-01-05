
import 'package:flutter/material.dart';

class VerificationCodeInput extends StatelessWidget {
  const VerificationCodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Container(
          width: 48,
          height: 48,
          margin: const EdgeInsets.symmetric(horizontal: 6.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFDCDCDC)),
            color: const Color(0xFFF9F3EE),
          ),
          child: const Center(
            child: Text(
              '-',
              style: TextStyle(
                color: Color(0xFFC8C8C8),
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ),
    );
  }
}