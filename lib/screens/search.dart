import 'package:flutter/material.dart';
import 'package:home_commerce/widgets/ItemCard.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
import 'package:home_commerce/widgets/top_menu.dart';



class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Padding(
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
            child: ItemCard()
        ),

          ],
        ),
      ),
    );
  }
}
