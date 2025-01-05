import 'package:flutter/material.dart';
import '../../restaurant_profile/restaurant_profile_screen.dart';
import '../../product_setup/product_setup_screen.dart'; // Import your "Other" screen

class BusinessTypeSelector extends StatelessWidget {
  const BusinessTypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the Restaurant Profile Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RestaurantProfileScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF7D7D7D),
                          fontWeight: FontWeight.w500,
                        ),
                    children: const [
                      TextSpan(text: 'Restaurant '),
                      TextSpan(
                        text: '(with location)',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Color(0xFFDCDCDC),
                  size: 32,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            // Navigate to the Other Profile Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductSetupScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Other',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xFF3A353A),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Color(0xFFDCDCDC),
                  size: 32,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
