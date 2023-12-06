import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  final List<String> imageText = [
    'Headphones',
    'Ipad',
    'Covers'
  ];

  final List<String> imagePaths = [
    'images/headphones.jpg',
    'images/ipad.jpeg',
    'images/phone_covers.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: imagePaths.length,
          // Replace with your actual number of list tiles
          itemBuilder: (BuildContext context, int index) {
            return Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      16.0), // Adjust the border radius as needed
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 17),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    // Adjust the border radius as needed
                    child: Container(
                      width: 70.0,
                      height: 200,
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imageText[index],
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[700]
                        ),
                      ),
                      SizedBox(height: 16,)
                    ],
                  ),
                  subtitle: Text('\$ 2000.75',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent
                    ),),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Icon(Icons.add_shopping_cart,
                      color: Colors.deepPurpleAccent,),
                  ),
                  onTap: () {
                    // Handle tile tap
                  },
                )
            );
          }

      ),
    );
  }
}
