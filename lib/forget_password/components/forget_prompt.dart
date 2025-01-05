
import 'package:flutter/material.dart';
import '../../login_screen/login_screen.dart';

class ForgetPrompt extends StatelessWidget {
  const ForgetPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Remember Password? Back to ",
          style: TextStyle(
            color: Color(0xFFA7A7A7),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () {
             // Navigate to the CreateAccountScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
          },
          child: const Text(
            'Sign in',
            style: TextStyle(
              color: Color(0xFF0F52BA),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}