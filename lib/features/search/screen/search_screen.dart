import 'package:flutter/material.dart';
import 'package:home_commerce/features/search/widgets/search_screen_body.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: SearchScreenBody(),
    );
  }
}
