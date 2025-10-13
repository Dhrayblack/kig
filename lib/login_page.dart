import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Stretched KiG logo at the top-left
          Positioned(
            top: -50,
            left: -100,
            right: 0,
            child: Image.asset(
              'assets/kig.png',
              width: double.infinity, // stretches across the screen
              height: 300,            // adjust height as needed
              fit: BoxFit.fill,       // stretches image
            ),
          ),

          // 🔹 Page content on top of the image
          Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                const SizedBox(height: 180), // leaves space for the logo

                // 🔽 Username field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔽 Password field
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

                // 🔽 Login button
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Login'),
                ),

                const SizedBox(height: 30),

                // 🔽 Signup link
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

                const SizedBox(height: 50),

                // 🔽 Divider with text
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

                // 🔽 Social login buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/google.png', width: 50, height: 50),
                    const SizedBox(width: 20),
                    Image.asset('assets/apple.png', width: 50, height: 50),
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
