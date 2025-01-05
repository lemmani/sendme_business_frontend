import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.11),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(icon: 'assets/icons/orders.png', label: 'Orders'),
          NavItem(
            icon: 'assets/icons/items.png', 
            label: 'Items',
            isSelected: true,
          ),
          NavItem(icon: 'assets/icons/activity.png', label: 'Activity'),
          NavItem(icon: 'assets/icons/profile.png', label: 'Profile'),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;

  const NavItem({super.key, 
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? const Color(0xFF0F52BA) : const Color(0xFF7D7D7D),
            fontSize: 11,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}