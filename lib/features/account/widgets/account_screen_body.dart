import 'package:flutter/material.dart';
import 'package:home_commerce/features/Account/widgets/account_card.dart';
class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(16,50,16,16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/avatar.png'), // Replace with your image path
          ),
          SizedBox(height: 10.0),
          Text(
            'Manar Taqatqa',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: ListView(
              children: [
                AccountCard(title: 'My Account', icon: Icons.account_circle, routeName: 'notifications'),
                AccountCard(title: 'My Orders', icon: Icons.shopping_bag_outlined, routeName: 'cart'),
                AccountCard(title: 'Language Settings', icon: Icons.language_outlined, routeName: 'languages'),
                AccountCard(title: 'Shipping Address', icon: Icons.location_on_outlined, routeName: 'shippingAddress'),
                AccountCard(title: 'My Cards', icon: Icons.credit_card_outlined, routeName: 'myCards'),
                AccountCard(title: 'Settings', icon: Icons.settings, routeName: ''),
                AccountCard(title: 'Privacy Policy', icon: Icons.policy_outlined, routeName: ''),
                AccountCard(title: 'FAQ', icon: Icons.error_outline, routeName: ''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
