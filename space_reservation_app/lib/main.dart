// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../app/firebase_config.dart';
import 'pages/sign_in.dart';
import 'pages/sign_up.dart';
import 'pages/spaces_main.dart';
import '../app/app_theme.dart';

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
      title: 'Reserva de Espaços',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const SignIn(),
      routes: {
        '/login': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/spaces': (context) => const MainSpaces(),
      },
    );
  }
}
