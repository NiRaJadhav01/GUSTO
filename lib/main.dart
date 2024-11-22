import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gusto/gusto.dart';
import 'package:gusto/view/login_screen.dart';
import 'package:gusto/view/settings_screen.dart';
import 'package:gusto/view/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyC3bnk4XNmld3o8G7BI4Aobf1qfWpBmLxU",
      appId: "1:646198632348:android:6513228e74afa323b2f259",
      messagingSenderId: "646198632348",
      projectId: "gusto-74f8f",
    ),
  );
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
