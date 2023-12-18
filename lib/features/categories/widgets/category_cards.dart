import 'package:flutter/material.dart';
class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 400,
      height: 500,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          List<String> imagePaths = [
            'images/headphones.jpg',
            'images/phone.jpg',
            'images/ipad.jpeg',
            'images/phone_covers.jpg',
          ];
          List<String> imageText = [
            'Headphones',
            'Phones',
            'Ipads',
            'Phone Accessories'
          ];

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
