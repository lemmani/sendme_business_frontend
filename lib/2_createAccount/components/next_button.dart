import 'package:flutter/material.dart';
import '../../services/user_service.dart'; // Import your user_service.dart file
import '../../Phone Number Verification/verify_phone_number_screen.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Form data that you want to submit
    String fullName = 'Emmanuel Lahai';  // Get this from your form
    String phoneNumber = '+232788888';  // Get this from your form
    String password = 'your_password'; // Get this from your form

    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () async {
          // Call the registerUser function from the user_service.dart file
          await registerUser(
            fullName: fullName,
            phoneNumber: phoneNumber,
            password: password,
          );

          // After calling the API, navigate to the next screen (e.g., VerifyPhoneNumberScreen)
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => const VerifyPhoneNumberScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0F52BA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                letterSpacing: 0.15,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward, size: 16, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
