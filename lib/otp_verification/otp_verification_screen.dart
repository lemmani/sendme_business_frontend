
import 'package:flutter/material.dart';
import 'components/otp_code_input.dart';
import 'components/otp_button.dart';
import 'components/otp_code_timer.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color(0xFFFAFAFA),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/c86abbd9f471461882180039e3f4054235fb508fac77f336ddb7bbb4b4b016eb?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                      width: 138,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      left: 0,
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/3621c8a768d4a2deabef254d4128ba6b764fe3a511d1acae723855d112723f0e?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                        width: 28,
                        height: 28,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'OTP Verification',
                  style: TextStyle(
                    color: Color(0xFF3A353A),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter the 6-digit code sent to your phone number',
                  style: TextStyle(
                    color: Color(0xFF7D7D7D),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    letterSpacing: -0.42,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 285),
                const OtpCodeInput(),
                const SizedBox(height: 285),
                const OtpButton(),
                const SizedBox(height: 8),
                const OtpCodeTimer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}