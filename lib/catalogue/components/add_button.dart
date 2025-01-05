import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFF0F52BA),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            color: Colors.black.withOpacity(0.07),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/add.png',
          width: 28,
          height: 28,
        ),
      ),
    );
  }
}