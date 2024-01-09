import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/offline/cache_keys.dart';
import 'package:home_commerce/controllers/db/offline/shared_helper.dart';
class AccountCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? routeName;
  const AccountCard({
    required this.title,
    required this.icon,
    required this.routeName});

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
          if(routeName == 'logout') {
            SharedHelper.prefs.setBool(CacheKeys.isLogin.name, false);
            Navigator.pushNamed(context, 'login');
            print("logout done ?");
          }
          else if (routeName != null) {
            Navigator.pushNamed(context, routeName!);
          } else {
          }
        },
      ),
    );
  }
}
