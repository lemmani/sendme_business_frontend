import 'package:flutter/material.dart';
import 'package_items.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Package Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            children: [
              PackageItem(
                name: 'Ice Cream',
                price: 'SLE 232',
                quantity: 1,
                imagePath: 'assets/ice_cream.jpg',
              ),
              Divider(),
              PackageItem(
                name: 'Something else',
                price: 'SLE 232',
                quantity: 1,
                imagePath: 'assets/ice_cream.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}