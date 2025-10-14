import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Successful'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
              SizedBox(height: 20),
              Text(
                'Thank you for your order!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                'Your order has been placed successfully.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Pop all and go back to home
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text('Back to Home'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
