import 'package:flutter/material.dart';
import 'components/progress_bar.dart';
import 'components/review_header.dart';
import 'components/order_item_card.dart';
import 'components/navigation_buttons.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProgressBar(progress: 0.5),
            const ReviewHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  OrderItemCard(
                    name: '3 Scoop Ice Cream Cone',
                    flavor: 'Chocolate',
                    addOns: '+1 Extra Scoop',
                    price: 'SLE 232',
                    quantity: 1,
                  ),
                  SizedBox(height: 16),
                  OrderItemCard(
                    name: '3 Scoop Ice Cream Cone',
                    flavor: 'Chocolate',
                    addOns: '+1 Extra Scoop',
                    price: 'SLE 232',
                    quantity: 2,
                  ),
                ],
              ),
            ),
            const NavigationButtons(),
          ],
        ),
      ),
    );
  }
}