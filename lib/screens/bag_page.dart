import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  final VoidCallback onStartShopping;

  const BagPage({super.key, required this.onStartShopping});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag_outlined, size: 60, color: Colors.green),
            const SizedBox(height: 10),
            const Icon(Icons.add_circle, size: 24, color: Colors.green),
            const SizedBox(height: 30),
            const Text(
              'Bag is empty',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Add items to bag and they will appear here!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onStartShopping,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: const Text('Start Shopping'),
            ),
          ],
        ),
      ),
    );
  }
}
