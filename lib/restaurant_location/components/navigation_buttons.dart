
import 'package:flutter/material.dart';
import '../../location_picker_res/location_picker_res_screen.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF0F52BA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFDCDCDC)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                letterSpacing: 0.15,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const LocationPickerResScreen()),
          );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F52BA),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                letterSpacing: 0.15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}