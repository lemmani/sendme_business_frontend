import 'package:flutter/material.dart';
import '../../2_createAccount/create_account_screen.dart';// Import the create account screen here
import '../../login_screen/login_screen.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the CreateAccountScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFF0F52BA), backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFDCDCDC)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
       const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the CreateAccountScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F52BA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Colors.white,
                
              ),
            ),
          ),
        ),
      ],
    );
  }
}