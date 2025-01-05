
import 'package:flutter/material.dart';
// import 'components/custom_app_bar.dart';
import 'components/forget_form.dart';
import 'components/forget_button.dart';
import 'components/forget_prompt.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 48.0),
            child: Column(
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
                  ],
                ),
                // const CustomAppBar(),
                const SizedBox(height: 37),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.72,
                    color: Color(0xFF171717),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.42,
                    color: Color(0xFF414141),
                  ),
                ),
                const SizedBox(height: 37),
                const ForgetForm(),
                const SizedBox(height: 435),
                const ForgetButton(),
                const SizedBox(height: 8),
                const ForgetPrompt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}