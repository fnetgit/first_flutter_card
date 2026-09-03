import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import './info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final cardWidth = screenWidth < 600
        ? screenWidth
        : (screenWidth * 0.45).clamp(400.0, 600.0);

    final scale = screenWidth < 600 ? 1.0 : (cardWidth / 400.0).clamp(1.0, 1.4);

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: cardWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0 * scale,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
                SizedBox(height: 16.0 * scale),
                Text(
                  'Francisco Neto',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 24.0 * scale,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 14.0 * scale,
                    color: Colors.white54,
                    letterSpacing: 4.0,
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.white24,
                  indent: 100.0,
                  endIndent: 100.0,
                ),
                InfoCard(
                  icon: const FaIcon(FontAwesomeIcons.github, color: Colors.blue),
                  data: 'fnetgit',
                  onTap: () => launchUrl(Uri.parse('https://github.com/fnetgit')),
                ),
                InfoCard(
                  icon: const Icon(Icons.email, color: Colors.blue),
                  data: 'netofrancisco.pro@gmail.com',
                  onTap: () => launchUrl(Uri.parse('mailto:netofrancisco.pro@gmail.com')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
