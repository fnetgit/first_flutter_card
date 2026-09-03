import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final Widget icon;
  final String data;

  const InfoCard({required this.icon, required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 16.0),
          Text(
            data,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}