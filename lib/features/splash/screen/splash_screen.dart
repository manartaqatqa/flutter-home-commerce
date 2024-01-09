import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/offline/shared_helper.dart';
import 'package:home_commerce/controllers/db/offline/cache_keys.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Map data = {};

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        bool isLogin =
            SharedHelper.prefs.getBool(CacheKeys.isLogin.name) ?? false;

        Navigator.pushReplacementNamed(
          context,
          isLogin ? 'mainScreen' : 'login',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/app_logo.jpg",
              width: 120,
              height: 120,
            ),
            Text(
              'Ecommerce UI Theme',
              style: TextStyle(
                color: Colors.deepPurple[400],
                fontSize: 25,
                fontFamily: "Pacifico",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
