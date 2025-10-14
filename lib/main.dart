import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'home_page.dart';

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
