import 'package:enlighten/home_page.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'main_page.dart';
import 'home_page.dart';
import 'library_page.dart';
import 'tutor_page.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Enlighten',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: SplashScreen(),
    routes: {
      '/main': (context) => MainScreen(),
      '/home': (context) => HomeScreen(),
      '/library': (context) => LibraryScreen(),
      '/tutor': (context) => TutorScreen(),
      '/profile': (context) => ProfileScreen(),
    },
  );
}
}
