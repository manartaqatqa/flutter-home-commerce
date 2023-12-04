import 'package:flutter/material.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Special for you',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        _ItemsList(
          onItemTap: (imagePath, title) {
            Navigator.pushNamed(
              context,
              'product',
              arguments: {'imagePath': imagePath, 'title': title},
            );
          },
        ),
      ],
    );
  }
}

class _ItemsList extends StatelessWidget {
  final Function(String, String) onItemTap;
  _ItemsList({required this.onItemTap});

  final List<String> imageText = [
    'Laptops',
    'Accessories',
  ];

  final List<String> imagePaths = [
    'images/laptop.jpg',
    'images/accessories.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              onItemTap(imagePaths[index], imageText[index]);
            },
          child: Container(
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
          ),
          );
        },
      ),
    );
  }
}