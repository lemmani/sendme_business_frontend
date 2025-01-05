import 'package:flutter/material.dart';
import 'components/catalogue_item.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Products',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Catalogue',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: const [
                  CatalogueItem(
                    title: 'Oreo Ice Cream Float',
                    price: 'SLE 550',
                    iconData: Icons.icecream,
                  ),
                  CatalogueItem(
                    title: 'Veggie Wrap',
                    price: 'SLE 230',
                    iconData: Icons.wrap_text,
                  ),
                  CatalogueItem(
                    title: 'Chicken Combo Meal',
                    price: 'SLE 550',
                    iconData: Icons.fastfood,
                  ),
                  CatalogueItem(
                    title: 'Cocoa Choco Jumbo Bowl',
                    price: 'SLE 550',
                    iconData: Icons.icecream,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Items'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1,
      ),
    );
  }
}