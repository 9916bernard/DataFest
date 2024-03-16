import 'package:datafest/home.dart'; // Make sure this import points to the actual location of your home.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CourseKata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.redAccent,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          // Define the default brightness and colors.
          headline1: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
          // You can add more text styling that fits your design
        ),
        // You can add more theme data that fits your design
      ),
      home: const MyHomePage(title: 'CourseKata'),
    );
  }
}

// ...Include your MyHomePage class here...
