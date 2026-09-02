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
          ],
        ),
      ),
    );
  }
}
