import 'package:flutter/material.dart';
import 'package:flutter_app/catalogue/components/add_button.dart';
import 'package:flutter_app/catalogue/components/search_bar.dart';
import '../catalogue/components/product_grid.dart';
import '../catalogue/components/add_to_order_button.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Stack(
          children: [
            const Column(
              children: [
                SearchBarr(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your Catalogue',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF3A353A),
                                ),
                              ),
                              AddButton(),
                            ],
                          ),
                        ),
                        ProductGrid(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 75,
              right: 0,
              child: AddToOrderButton(itemCount: 2),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: NavigationBar(destinations: const [],),
            ),
          ],
        ),
      ),
    );
  }
}