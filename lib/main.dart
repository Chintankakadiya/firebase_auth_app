import 'package:firebase_auth_app/screens/home_page.dart';
import 'package:firebase_auth_app/screens/login_page.dart';
import 'package:firebase_auth_app/screens/signup_page.dart';
import 'package:firebase_auth_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        '/': (context) => HomePage(),
        'splash': (context) => SplashScreen(),
        'login_page': (context) => LoginPage(),
        'signup_page': (context) => SignupPage(),
      },
    ),
  );
}
