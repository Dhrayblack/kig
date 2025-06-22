import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  final List<String> categories = const [
    "New In",
    "Clothing",
    "Shoes",
    "Accessories",
    "Sales",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Shop'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "I'm looking for...",
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Category List
            ...categories.map((category) => Column(
              children: [
                ListTile(
                  title: Text(category),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // TODO: Handle category selection
                  },
                ),
                const Divider(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
