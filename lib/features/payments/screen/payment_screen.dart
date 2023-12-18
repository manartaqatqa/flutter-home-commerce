import 'package:flutter/material.dart';
import 'package:home_commerce/features/payments/widgets/payment_screen_body.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentScreenBody(),
    );
  }
}
