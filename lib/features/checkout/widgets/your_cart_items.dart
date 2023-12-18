import 'package:flutter/material.dart';
class YourCartItems extends StatelessWidget {
   YourCartItems({super.key});
  final List<String> imagePaths = [
    'images/headphones.jpg',
    'images/phone.jpg',
    'images/laptop.jpg',
    'images/phone_covers.jpg',
    'images/accessories.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            Text(
              "View All",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[500]
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
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
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
