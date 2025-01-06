import 'package:flutter/material.dart';
import 'food_item_card.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodItems = [
      {
        'name': 'Oreo Ice Cream Float',
        'price': 'SLE 550',
        'image': 'assets/oreo_float.jpg',
      },
      {
        'name': 'Veggie Wrap',
        'price': 'SLE 230',
        'image': 'assets/veggie_wrap.jpg',
      },
      {
        'name': 'Chicken Combo Meal',
        'price': 'SLE 550',
        'image': 'assets/chicken_combo.jpg',
      },
      {
        'name': 'Cocoa Choco Jumbo Bowl',
        'price': 'SLE 550',
        'image': 'assets/cocoa_bowl.jpg',
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        return FoodItemCard(
          name: foodItems[index]['name'],
          price: foodItems[index]['price'],
          imageUrl: foodItems[index]['image'],
        );
      },
    );
  }
}