import 'package:flutter/material.dart';
import 'package:home_commerce/features/categories/widgets/category_cards.dart';
class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Center(
        child: Column(
          children: [
            Text(
              "Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 40,),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: 400,
                padding: EdgeInsets.fromLTRB(3, 3, 7, 3),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Category',
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
            SizedBox(height: 20,),
           CategoryCards(),
          ],
        ),
      ),
    );
  }
}
