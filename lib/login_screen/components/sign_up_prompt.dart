
import 'package:flutter/material.dart';
import '../../2_createAccount/create_account_screen.dart';

class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
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
                MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
              );
          },
          child: const Text(
            'Sign up',
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