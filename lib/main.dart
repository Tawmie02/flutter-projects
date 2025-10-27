import 'package:flutter/material.dart';
import 'package:login_form/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: "Auth Demo",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
    primarySwatch: Colors.teal,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
    ),
  ),

       home: const LoginPage(),
    );
  }
}
