
import 'package:flutter/material.dart';
import '../../all_done/all_done_screen.dart';
import '../../location_picker/location_picker_screen.dart';

class NavigationButtonsNext extends StatelessWidget {
  const NavigationButtonsNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const LocationPickerScreen()),
          );
            },
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
            MaterialPageRoute(builder: (context) =>const AllDoneScreen()),
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
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}