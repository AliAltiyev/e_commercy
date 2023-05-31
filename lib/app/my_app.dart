import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); //Private constructor

  static MyApp instance = const MyApp._internal(); // Returns instance of MyApp

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello',
        ),
      ),
    );
  }
}
