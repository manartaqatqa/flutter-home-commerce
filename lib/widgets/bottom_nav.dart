import 'package:flutter/material.dart';
import 'package:home_commerce/features/account/screen/account_screen.dart';
import 'package:home_commerce/features/categories/screen/categories_screen.dart';
import 'package:home_commerce/features/home/screen/home_screen.dart';
import 'package:home_commerce/features/search/screen/search_screen.dart';
import 'package:home_commerce/features/wishlist/screen/wishlist_screen.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  List<Widget>Screens = [
    HomeScreen(),
    CategoriesScreen(),
    SearchScreen(),
    WishlistScreen(),
    AccountScreen()
  ];  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: Colors.deepPurpleAccent,
      currentIndex: index,
      onTap: (i){
        setState(() {
          index = i;
        });
      },
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
            label: "WishList"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account"
        )
      ],
      // onTap: (index) {
      //   setState(() {
      //     selectedIndex=index;
      //   });
      //   switch (index) {
      //     case 0:
      //       Navigator.pushReplacementNamed(context, 'home');
      //       break;
      //     case 1:
      //       Navigator.pushReplacementNamed(context, 'categories');
      //       break;
      //     case 2:
      //       Navigator.pushReplacementNamed(context, 'search');
      //       break;
      //     case 3:
      //       Navigator.pushReplacementNamed(context, 'wishList');
      //       break;
      //     case 4:
      //       Navigator.pushReplacementNamed(context, 'account');
      //       break;
      //   }
      // },
    );
  }
}
