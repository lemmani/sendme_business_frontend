import 'package:flutter/material.dart';
import '../components/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.75,
        children: const [
          ProductCard(
            image: 'assets/images/oreo.png',
            name: 'Oreo Ice Cream Float',
            price: 'SLE 550',
          ),
          ProductCard(
            image: 'assets/images/veggie.png',
            name: 'Veggie Wrap',
            price: 'SLE 230',
          ),
          ProductCard(
            image: 'assets/images/chicken.png',
            name: 'Chicken Combo Meal',
            price: 'SLE 550',
          ),
          ProductCard(
            image: 'assets/images/cocoa.png',
            name: 'Cocoa Choco Jumbo Bowl',
            price: 'SLE 550',
          ),
        ],
      ),
    );
  }
}