
import 'package:flutter/material.dart';
import '../components/custom_icons.dart';

class AddressInput extends StatelessWidget {
  const AddressInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pickup Address*',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3A353A),
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFDCDCDC)),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Tap to set the location',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7D7D7D),
                letterSpacing: -0.48,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16),
              suffixIcon: Padding(
                padding: EdgeInsets.all(16),
                child: CustomIcons.locationPin,
              ),
            ),
          ),
        ),
      ],
    );
  }
}