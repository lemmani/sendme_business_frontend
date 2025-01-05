import 'package:flutter/material.dart';
import '../../business_setup/business_setup_screen.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to WelcomeScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BusinessSetupScreen()),
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
            'Verify Code',
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
