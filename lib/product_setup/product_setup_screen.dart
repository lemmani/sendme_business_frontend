
import 'package:flutter/material.dart';
import '../product_setup/components/progress_bar.dart';
import '../product_setup/components/product_image_upload.dart';
import '../product_setup/components/product_title_input.dart';
import '../product_setup/components/quantity_selector.dart';
import '../product_setup/components/price_input.dart';
import '../product_setup/components/navigation_buttons.dart';

class ProductSetupScreen extends StatelessWidget {
  const ProductSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xFFFAFAFA),
          ),
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 54,
                      height: 21,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.notifications_none),
                        SizedBox(width: 4),
                        Icon(Icons.shopping_cart_outlined),
                        SizedBox(width: 4),
                        Icon(Icons.person_outline),
                      ],
                    ),
                  ],
                ),
              ),
              const ProgressBar(progress: 0.75),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's add your first product",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Color(0xFF3A353A),
                      ),
                    ),
                    SizedBox(height: 32),
                    ProductImageUpload(),
                    SizedBox(height: 24),
                    ProductTitleInput(),
                    SizedBox(height: 24),
                    QuantitySelector(),
                    SizedBox(height: 24),
                    PriceInput(),
                    SizedBox(height: 164),
                    NavigationButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}