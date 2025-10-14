import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // For simplicity, a sample cart list
  List<String> _cartItems = ['Apple', 'Banana', 'Orange'];

  void _checkout() {
    if (_cartItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Cart is empty')),
      );
      return;
    }
    // Navigate to order success page
    Navigator.pushNamed(context, '/order_success').then((_) {
      // Clear cart after successful order
      setState(() {
        _cartItems.clear();
      });
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: _cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                final item = _cartItems[index];
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _removeItem(index),
                  ),
                );
              },
            ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: ElevatedButton(
          onPressed: _checkout,
          child: Text('Checkout'),
          style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
        ),
      ),
    );
  }
}
