// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'firebase_config.dart';
import 'pages/login_screen.dart';
import 'pages/signup_screen.dart';
import 'pages/spaces_screen.dart';
import 'theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await FirebaseConfig.initializeFirebase();
    runApp(const MyApp());
  } catch (e) {
    print('Erro ao inicializar Firebase: $e');
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Reservas',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/spaces': (context) => const SpacesScreen(),
      },
    );
  }
}