
import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to SendMe Business',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: const Color(0xFF3A353A),
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'Lets get your business set up! First let us know what type of business your running.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF7D7D7D),
                letterSpacing: 0.25,
              ),
        ),
      ],
    );
  }
}