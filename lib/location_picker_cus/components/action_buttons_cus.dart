
import 'package:flutter/material.dart';
import '../../order_summary/order_summary_screen.dart';

class ActionButtonsCus extends StatelessWidget {
  const ActionButtonsCus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFFBE563B), backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFDCDCDC)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text('Cancel'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const OrderSummaryScreen()),
          );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color(0xFF0F52BA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text('Set Location'),
            ),
          ),
        ],
      ),
    );
  }
}