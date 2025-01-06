import 'package:flutter/material.dart';
import 'components/catalogue_item.dart';
import '../home_selected/home_screen.dart'; // Add your new screen here
import '../review_items/review_screen.dart';
// import 'screens/orders_screen.dart';
// import 'screens/items_screen.dart';
// import 'screens/activity_screen.dart';
// import 'screens/profile_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 1;

  void _onBottomNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReviewScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReviewScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReviewScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReviewScreen()),
        );
        break;
    }
  }

  void _navigateToDetails(String title, String price, IconData icon) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(
          title: title,
          price: price,
          iconData: icon,
        ),
      ),
    );
  }

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
                children: [
                  GestureDetector(
                    onTap: () => _navigateToDetails(
                      'Oreo Ice Cream Float',
                      'SLE 550',
                      Icons.icecream,
                    ),
                    child: const CatalogueItem(
                      title: 'Oreo Ice Cream Float',
                      price: 'SLE 550',
                      iconData: Icons.icecream,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _navigateToDetails(
                      'Veggie Wrap',
                      'SLE 230',
                      Icons.wrap_text,
                    ),
                    child: const CatalogueItem(
                      title: 'Veggie Wrap',
                      price: 'SLE 230',
                      iconData: Icons.wrap_text,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _navigateToDetails(
                      'Chicken Combo Meal',
                      'SLE 550',
                      Icons.fastfood,
                    ),
                    child: const CatalogueItem(
                      title: 'Chicken Combo Meal',
                      price: 'SLE 550',
                      iconData: Icons.fastfood,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _navigateToDetails(
                      'Cocoa Choco Jumbo Bowl',
                      'SLE 550',
                      Icons.icecream,
                    ),
                    child: const CatalogueItem(
                      title: 'Cocoa Choco Jumbo Bowl',
                      price: 'SLE 550',
                      iconData: Icons.icecream,
                    ),
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
        currentIndex: _currentIndex,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
