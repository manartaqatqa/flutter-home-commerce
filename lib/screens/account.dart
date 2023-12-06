import 'package:flutter/material.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Padding(
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
                  AccountCard(title: 'My Account', icon: Icons.account_circle),
                  AccountCard(title: 'My Orders', icon: Icons.shopping_bag_outlined),
                  AccountCard(title: 'Language Settings', icon: Icons.language_outlined),
                  AccountCard(title: 'Shipping Address', icon: Icons.location_on_outlined),
                  AccountCard(title: 'My Cards', icon: Icons.credit_card_outlined),
                  AccountCard(title: 'Settings', icon: Icons.settings),
                  AccountCard(title: 'Privacy Policy', icon: Icons.policy_outlined),
                  AccountCard(title: 'FAQ', icon: Icons.error_outline),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AccountCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const AccountCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Icon(icon,color: Colors.black,),
        title: Text(title,style: TextStyle(color: Colors.black)),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          // Handle item tap
        },
      ),
    );
  }
}