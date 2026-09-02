import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: Text(
          'My Card',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}