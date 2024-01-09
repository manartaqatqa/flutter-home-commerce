import 'package:flutter/material.dart';
import 'package:home_commerce/features/categories/widgets/categories_screen_body.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoriesScreenBody(),
    );
  }
}
