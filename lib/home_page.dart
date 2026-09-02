import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40.0, color: Colors.blue),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Francisco Neto',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.white54, letterSpacing: 4.0),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.white24,
              indent: 100.0,
              endIndent: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}