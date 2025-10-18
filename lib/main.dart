import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/login_page.dart';
import 'screens/signup_page.dart';
import 'screens/home_page.dart';
// Ensure that the HomePage class exists in home_page.dart and is exported.

void main() {
  runApp(const KiGApp());
}

class KiGApp extends StatelessWidget {
  const KiGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KiG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
      ),
      initialRoute: '/', // start with SplashScreen
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
