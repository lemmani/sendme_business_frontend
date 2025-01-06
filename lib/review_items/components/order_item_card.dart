import 'package:flutter/material.dart';

class OrderItemCard extends StatelessWidget {
  final String name;
  final String flavor;
  final String addOns;
  final String price;
  final int quantity;

  const OrderItemCard({
    super.key,
    required this.name,
    required this.flavor,
    required this.addOns,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/ice_cream.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Flavour: $flavor',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Add-Ons:',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  addOns,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        if (quantity > 1)
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_circle_outline),
                            color: Colors.red,
                          ),
                        Text(
                          quantity.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}