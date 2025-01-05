
import 'package:flutter/material.dart';

class OtpCodeTimer extends StatelessWidget {
  const OtpCodeTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't get code? ",
          style: TextStyle(
            color: Color(0xFFC8C8C8),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          '0:55',
          style: TextStyle(
            color: Color(0xFF0F52BA),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}