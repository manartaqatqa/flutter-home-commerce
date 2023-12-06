import 'package:flutter/material.dart';
import 'package:home_commerce/widgets/ItemCard.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
import 'package:home_commerce/widgets/top_menu.dart';



class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: Column(
          children: [
            Text(
              "Wish List",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 37,),
            Row(
              children: [
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: 370,
                    padding: EdgeInsets.fromLTRB(3, 3, 7, 3),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Product',
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search,color: Colors.deepPurpleAccent,),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                width: 400,
                height: 600,
                child: ItemCard()
            ),

          ],
        ),
      ),
    );
  }
}
