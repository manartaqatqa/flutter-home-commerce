import 'package:flutter/material.dart';
import 'package:home_commerce/features/checkout/widgets/checkout_screen_body.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckoutScreenBody(),
    );
  }
}
