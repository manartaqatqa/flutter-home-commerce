
import 'package:flutter/material.dart';
import 'package:home_commerce/screens/categoriesScreen.dart';
import 'package:home_commerce/screens/home.dart';
import 'package:home_commerce/screens/productDetails.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute:"home" ,
      routes: {
        "home" : (context) => Home(),
        "categories" : (context) => CategoriesScreen(),
        "product" : (context) => Product(),
      },
    )
  );
}

