// home_page.dart
import 'package:flutter/material.dart';
import 'package:kig/screens/bag_page.dart';
import 'package:kig/screens/profile_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      const HomeContent(),
      const Center(child: Text("Shop Page")), // placeholder
      BagPage(
        onStartShopping: () {
          setState(() => _currentIndex = 1); // switch to Shop tab
        },
      ),
      const ProfilePage(), // real ProfilePage
    ];
  }

  final List<Widget> _titles = [
    Image.asset('assets/kig.png', height: 50, fit: BoxFit.contain),
    const Text('Shop', style: TextStyle(color: Colors.black)),
    const Text('Bag', style: TextStyle(color: Colors.black)),
    const Text('My Profile', style: TextStyle(color: Colors.black)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: _titles[_currentIndex],
        actions: [
          IconButton(icon: const Icon(Icons.camera_alt, color: Colors.black), onPressed: () {}),
          IconButton(icon: const Icon(Icons.message, color: Colors.black), onPressed: () {}),
          IconButton(icon: const Icon(Icons.favorite_border, color: Colors.black), onPressed: () {}),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(leading: const Icon(Icons.info), title: const Text('About Us'), onTap: () {}),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "I'm looking for...",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryCard(Icons.shopping_bag, "Flame Jeans"),
                _buildCategoryCard(Icons.shopping_bag, "Skull Shirts"),
                _buildCategoryCard(Icons.sports_soccer, "Sports Caps"),
                _buildCategoryCard(Icons.chair, "Kig Steeze"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Featured Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
            children: [
              _buildProductCard("Sneakers", "₦20,000", Icons.roller_skating_rounded),
              _buildProductCard("Smart Watch", "₦35,000", Icons.watch),
              _buildProductCard("Shirts", "₦15,000", Icons.short_text),
              _buildProductCard("tiktok Jeans", "₦100,000", Icons.tiktok),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildCategoryCard(IconData icon, String title) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, size: 32, color: Colors.green), const SizedBox(height: 8), Text(title, style: const TextStyle(fontSize: 12))],
      ),
    );
  }

  static Widget _buildProductCard(String name, String price, IconData icon) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Icon(icon, size: 80, color: Colors.green)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(price, style: const TextStyle(color: Colors.green, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
