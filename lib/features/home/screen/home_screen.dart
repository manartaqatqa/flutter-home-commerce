import 'package:flutter/material.dart';
import 'package:home_commerce/features/home/widgets/best_selling.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
import 'package:home_commerce/features/home/widgets/featured_items.dart';
import 'package:home_commerce/features/home/widgets/special_items.dart';
import 'package:home_commerce/features/home/widgets/top_menu.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: Column(
          children: [
            TopMenu(),
            SizedBox(height: 40,),
            SpecialItems(),
            SizedBox(height: 40,),
            FeaturedProducts(),
            SizedBox(height: 40,),
            BestSelling()
          ],
        ),
      ),
    );
  }
}
