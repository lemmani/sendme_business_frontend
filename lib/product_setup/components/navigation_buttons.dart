
import 'package:flutter/material.dart';
import '../../pickup_address/pickup_address_screen.dart';
import '../../business_setup/business_setup_screen.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BusinessSetupScreen(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color(0xFF0F52BA), backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFFDCDCDC)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text(
            'Back',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const PickupAddressScreen()),
          );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F52BA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text(
            'Next',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}