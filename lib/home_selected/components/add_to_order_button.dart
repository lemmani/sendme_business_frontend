import 'package:flutter/material.dart';
import '../../review_items/review_screen.dart';

class AddToOrderButton extends StatelessWidget {
  final int itemCount;

  const AddToOrderButton({
    super.key,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ReviewScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Add [$itemCount] items to order',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}