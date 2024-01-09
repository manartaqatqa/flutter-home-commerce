import 'package:flutter/material.dart';
import 'package:home_commerce/features/wishlist/widgets/wishlist_screen_body.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';



class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WishlistScreenBody(),
    );
  }
}
