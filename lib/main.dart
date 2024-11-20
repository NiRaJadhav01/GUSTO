import 'package:flutter/material.dart';
import 'package:gusto/gusto.dart';
import 'package:gusto/view/login_screen.dart';
import 'package:gusto/view/settings_screen.dart';
import 'package:gusto/view/splash_screen.dart';

Future<void> main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/gusto': (context) => const Gusto(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
