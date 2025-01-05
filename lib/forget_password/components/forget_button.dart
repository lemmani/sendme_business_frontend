
import 'package:flutter/material.dart';
import '../../otp_verification/otp_verification_screen.dart';

class ForgetButton extends StatelessWidget {
  const ForgetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Navigate to the CreateAccountScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OtpVerificationScreen()),
              );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0F52BA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: const Text(
          'Send OTP',
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