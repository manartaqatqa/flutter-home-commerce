import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.storefront_sharp),
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: "List"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account"
        )
      ],
    );
  }
}
