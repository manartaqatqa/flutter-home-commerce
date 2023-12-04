import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
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
            icon: Icon(Icons.category_rounded),
            label: "Categories"
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
      onTap: (index) {
        setState(() {
          _selectedIndex=index;
        });
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, 'home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, 'categories');
            break;
        }
      },
    );
  }
}
