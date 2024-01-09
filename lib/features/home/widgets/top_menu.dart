import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: 230,
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
        SizedBox(width: 25,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'cart');
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
                width: 50,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.deepPurpleAccent,
                )
            ),
          ),
        ),
        SizedBox(width: 10,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'notifications');
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
                width: 50,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.deepPurpleAccent,
                )
            ),
          ),
        ),
      ],
    );
  }
}
