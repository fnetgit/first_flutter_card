import 'package:flutter/material.dart';

import './info_card.dart';

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
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Francisco Neto',
              style: TextStyle(
                fontFamily: 'Pacifico',
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
            const InfoCard(icon: Icons.code, data: 'fnetgit'),
            const InfoCard(
              icon: Icons.email,
              data: 'netofrancisco.pro@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
