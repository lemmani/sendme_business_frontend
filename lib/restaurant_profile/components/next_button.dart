
import 'package:flutter/material.dart';
import '../../restaurant_profile_next/restaurant_profile_screen_next.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RestaurantProfileScreenNext()),
          );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0F52BA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(double.infinity, 48),
      ),
      child: const Text(
        'Next',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}