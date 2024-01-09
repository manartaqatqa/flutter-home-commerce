import 'package:flutter/material.dart';
import 'package:home_commerce/features/home/widgets/best_selling.dart';
import 'package:home_commerce/features/home/widgets/featured_items.dart';
import 'package:home_commerce/features/home/widgets/special_items.dart';
import 'package:home_commerce/features/home/widgets/top_menu.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      const Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopMenu(),
              SizedBox(height: 40,),
              SpecialItems(),
              SizedBox(height: 20,),
              FeaturedProducts(),
              SizedBox(height: 40,),
              BestSelling()
            ],
          ),
        ),
      ),
    );
  }
}
