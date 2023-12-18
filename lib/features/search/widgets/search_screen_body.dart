import 'package:flutter/material.dart';
import 'package:home_commerce/widgets/ItemCard.dart';
class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Text(
            "Search",
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
                  width: 300,
                  padding: EdgeInsets.fromLTRB(3, 3, 7, 3),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Here... ',
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
              SizedBox(width: 25,),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(100.0),
                child: Container(
                    width: 50,
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.deepPurpleAccent,
                    )
                ),
              ),
            ],
          ),
          Container(
              width: 400,
              height: 600,
              child: ItemCard(
                imageText: ['Headphones', 'Ipad', 'Covers'],
                imagePaths: ['images/headphones.jpg', 'images/ipad.jpeg', 'images/phone_covers.jpg'],
                trailingIcons: Icon(Icons.add_shopping_cart),
                prices: ['2000.75', '1500.50', '30.99'],
              )

          ),

        ],
      ),
    );
  }
}
