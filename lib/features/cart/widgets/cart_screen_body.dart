import 'package:flutter/material.dart';
import 'package:home_commerce/features/cart/widgets/cart_bottom.dart';
import 'package:home_commerce/widgets/ItemCard.dart';
class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(height: 20,),
          const Text(
            '5 Products',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15
            ),
          ),
          Container(
              height: 600,
              child: const ItemCard(
                imageText: ['Accessories','Laptop','Headphones', 'Ipad', 'Covers'],
                imagePaths: ['images/accessories.jpg','images/laptop.jpg','images/headphones.jpg', 'images/ipad.jpeg', 'images/phone_covers.jpg'],
                trailingIcons: Column(
                  children: [
                    Expanded(child: Icon(Icons.add)),
                    Expanded(child: SizedBox(height: 3,)),
                    Expanded(child: Text('1')),
                    Expanded(child: Icon(Icons.remove)),
                  ],
                ),
                prices: ['120.50','3000.99','2000.75', '1500.50', '30.99'],
              )

          ),
          CartBottom(),
        ],
      ),
    );
  }
}
