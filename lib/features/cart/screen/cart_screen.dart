import 'package:flutter/material.dart';
import 'package:home_commerce/features/cart/widgets/cart_screen_body.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartScreenBody(),
    );
  }
}
