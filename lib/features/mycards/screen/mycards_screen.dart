import 'package:flutter/material.dart';
import 'package:home_commerce/features/mycards/widgets/mycards_screen_body.dart';
class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyCardsScreenBody()
    );
  }
}
