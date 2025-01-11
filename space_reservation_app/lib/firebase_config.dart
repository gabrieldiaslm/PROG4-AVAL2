import 'package:firebase_core/firebase_core.dart';

class FirebaseConfig {
  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyClch7TPqsqXqiBONW1_jbAWNUQzdv_pKA",
        authDomain: "reserva-a3218.firebaseapp.com",
        projectId: "reserva-a3218",
        storageBucket: "reserva-a3218.firebasestorage.app",
        messagingSenderId: "124928050449",
        appId: "1:124928050449:android:524073b41d223fb13038b0",
      ),
    );
  }
}