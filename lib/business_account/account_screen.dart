import 'package:flutter/material.dart';
import 'components/banner_image.dart';
import 'components/profile_image.dart';
import 'components/menu_item.dart';
import 'components/bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Your Account',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const BannerImage(),
                    const ProfileImage(),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'Add a business slogan',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          MenuItem(
                            icon: Icons.storefront_outlined,
                            title: 'Edit Storefront Details',
                            onTap: () {},
                          ),
                          const Divider(height: 1),
                          MenuItem(
                            icon: Icons.person_outline,
                            title: 'Account Details',
                            onTap: () {},
                          ),
                          const Divider(height: 1),
                          MenuItem(
                            icon: Icons.info_outline,
                            title: 'About Us',
                            onTap: () {},
                          ),
                          const Divider(height: 1),
                          MenuItem(
                            icon: Icons.logout,
                            title: 'Log Out',
                            textColor: Colors.red,
                            iconColor: Colors.red,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CustomBottomNavigation(),
          ],
        ),
      ),
    );
  }
}