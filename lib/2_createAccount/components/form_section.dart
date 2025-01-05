import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 185),
          _buildFormField(
            label: 'Full Name*',
            hintText: 'Emmanuel Lahai',
          ),
          const SizedBox(height: 24),
          _buildFormField(
            label: 'Phone Number*',
            hintText: '+232788888',
          ),
          const SizedBox(height: 24),
          _buildPasswordField(),
          const SizedBox(height: 8),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
              ),
              children: [
                TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: TextStyle(color: Color(0xFFC8C8C8)),
                ),
                TextSpan(
                  text: 'Terms ',
                  style: TextStyle(color: Color(0xFFF49321)),
                ),
                TextSpan(
                  text: 'and',
                  style: TextStyle(color: Color(0xFFF49321)),
                ),
                TextSpan(
                  text: ' conditions.',
                  style: TextStyle(color: Color(0xFFF49321)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF3A353A),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFC8C8C8),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              letterSpacing: -0.42,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFDCDCDC)),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            color: Color(0xFF3A353A),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '************',
            hintStyle: const TextStyle(
              color: Color(0xFFC8C8C8),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              letterSpacing: -0.42,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFDCDCDC)),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            suffixIcon: const Icon(Icons.visibility_off, size: 20, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}