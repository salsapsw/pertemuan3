import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/landing_page.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cutie Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: const Color(0xFF4E3B31),
        scaffoldBackgroundColor: const Color.fromARGB(255, 228, 221, 215),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4E3B31),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
          bodySmall: TextStyle(color: Colors.black54, fontSize: 14),
          titleLarge: TextStyle(color: Color(0xFF4E3B31), fontSize: 24),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4E3B31),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const LoginScreen(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
