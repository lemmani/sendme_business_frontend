
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          '/Users/emmanuelfrancislahai/hello_world/flutter_application_1/asset/images/Onboading1.png',
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 24),
        const Text(
          'Welcome to Send Me Business!',
          style: TextStyle(
            color: Color(0xFF0F52BA),
            fontSize: 28,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Accelerate your business in style!',
          style: TextStyle(
            color: Color(0xFF3A353A),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDot(true),
            const SizedBox(width: 8),
            _buildDot(false),
            const SizedBox(width: 8),
            _buildDot(false),
          ],
        ),
      ],
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFF0560FA) : const Color(0xFFA7A7A7),
      ),
    );
  }
}