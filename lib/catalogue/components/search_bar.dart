import 'package:flutter/material.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 16,
            color: Colors.black.withOpacity(0.04),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: const Color(0xFFDCDCDC)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/search.png',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Search Products',
                    style: TextStyle(
                      color: Color(0xFF7D7D7D),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      letterSpacing: 0.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Image.asset(
            'assets/icons/filter.png',
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}