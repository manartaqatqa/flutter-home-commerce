import 'package:flutter/material.dart';
import 'package:home_commerce/features/shipping_address/widgets/shipping_address_body.dart';
class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ShippingAddressBody()
    );
  }
}
