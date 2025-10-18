import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 40),
          // 👤 Avatar
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green[100],
              child: const Icon(Icons.person, size: 60, color: Colors.green),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text("Keep It Green",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const Center(
            child: Text("Keepitgreen@gmail.com",
                style: TextStyle(color: Colors.grey)),
          ),
          const SizedBox(height: 30),

          // 📋 Options
          _buildTile(Icons.person, "Profile Details"),
          _buildTile(Icons.payment, "Payment Methods"),
          _buildTile(Icons.history, "Order History"),
          _buildTile(Icons.help_outline, "Help & Support"),
          _buildTile(Icons.settings, "Settings"),

          const SizedBox(height: 30),

          // 🚪 Logout
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.red),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (route) => false);
            },
            child: const Text(
              "Logout",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.green),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        const Divider(height: 1),
      ],
    );
  }
}
