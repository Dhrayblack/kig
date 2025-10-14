import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Welcome text
              const Text(
                'WELCOME TO KiG',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 160, 208, 162),
                ),
              ),

              const SizedBox(height: 90),

              // Username
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
              ),

              const SizedBox(height: 20),

              // Login button (full width)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/home'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),

              const SizedBox(height: 30),

              // Signup link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: const Text('Create Account'),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Divider with text
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Or login with'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 20),

              // Social login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // TODO: Google login
                    },
                    child: Image.asset('assets/google.png', width: 50, height: 50),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      // TODO: Apple login
                    },
                    child: Image.asset('assets/apple.png', width: 50, height: 50),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
