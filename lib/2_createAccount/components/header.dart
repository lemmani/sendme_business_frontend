
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/c86abbd9f471461882180039e3f4054235fb508fac77f336ddb7bbb4b4b016eb?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
              width: 138,
              height: 32,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Create an Account',
          style: TextStyle(
            color: Color(0xFF3A353A),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Complete this form to get started as a Customer',
          style: TextStyle(
            color: Color(0xFF7D7D7D),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            letterSpacing: -0.42,
          ),
        ),
      ],
    );
  }
}