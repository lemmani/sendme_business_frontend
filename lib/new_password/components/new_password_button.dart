
import 'package:flutter/material.dart';

class NewPasswordButton extends StatelessWidget {
  const NewPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Handle login
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0F52BA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: const Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.84,
          ),
        ),
      ),
    );
  }
}