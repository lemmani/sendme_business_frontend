
import 'package:flutter/material.dart';
import 'components/header_section.dart';
import 'components/progress_section.dart';
import 'components/product_form_section.dart';

class MenuItemScreen extends StatelessWidget {
  const MenuItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xFFFAFAFA),
          ),
          child: Column(
            children: [
              const HeaderSection(),
              const ProgressSection(),
              const ProductFormSection(),
              Container(
                height: 48,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -1),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.112),
                    ),
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