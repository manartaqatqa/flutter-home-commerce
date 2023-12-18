import 'package:flutter/material.dart';
class LanguageCard extends StatelessWidget {
  final String title;
  final String imagePath;

  LanguageCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}