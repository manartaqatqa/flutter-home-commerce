import 'package:flutter/material.dart';
import 'package:home_commerce/features/Account/widgets/account_screen_body.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: AccountScreenBody()
    );
  }
}
