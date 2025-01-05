import 'package:flutter/material.dart';
import '../../new_password/new_password.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to WelcomeScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NewPasswordScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF0F52BA),
        ),
        child: const Center(
          child: Text(
            'Set New Password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              letterSpacing: 0.15,
            ),
          ),
        ),
      ),
    );
  }
}
