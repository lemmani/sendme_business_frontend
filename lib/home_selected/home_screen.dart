import 'package:flutter/material.dart';
import 'components/search_bar.dart';
import 'components/catalogue_header.dart';
import 'components/food_grid.dart';
import 'components/bottom_navigation.dart';
import 'components/add_to_order_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required String title, required String price, required IconData iconData});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            CustomSearchBar(),
            CatalogueHeader(),
            Expanded(
              child: FoodGrid(),
            ),
            AddToOrderButton(itemCount: 2),
            CustomBottomNavigation(),
          ],
        ),
      ),
    );
  }
}