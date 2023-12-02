import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Featured Products',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5,),
        _ItemsList(),
      ],
    );
  }
}

class _ItemsList extends StatelessWidget {
  _ItemsList();

  final List<String> imageText = [
    'IPad',
    'Covers',
  ];

  final List<String> imagePaths = [
    'images/ipad.jpeg',
    'images/phone_covers.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePaths[index],
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      imageText[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}