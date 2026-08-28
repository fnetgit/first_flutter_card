import 'package:flutter/material.dart';

void main() {
  runApp(const MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: const Center(
          child: Text(
            'My card',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}