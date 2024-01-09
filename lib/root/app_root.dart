import 'package:flutter/material.dart';
import 'package:home_commerce/features/account/screen/account_screen.dart';
import 'package:home_commerce/features/categories/screen/categories_screen.dart';
import 'package:home_commerce/features/home/screen/home_screen.dart';
import 'package:home_commerce/features/main_screen/main_screen.dart';
import 'package:home_commerce/features/search/screen/search_screen.dart';
import 'package:home_commerce/features/verification/screen/verification_screen.dart';
import 'package:home_commerce/features/wishlist/screen/wishlist_screen.dart';
import 'package:home_commerce/features/cart/screen/cart_screen.dart';
import 'package:home_commerce/features/checkout/screen/checkout_screen.dart';
import 'package:home_commerce/features/languages/screen/language_screen.dart';
import 'package:home_commerce/features/login/screen/login_screen.dart';
import 'package:home_commerce/features/mycards/screen/mycards_screen.dart';
import 'package:home_commerce/features/notifications/screen/notifications_screen.dart';
import 'package:home_commerce/features/payments/screen/payment_screen.dart';
import 'package:home_commerce/features/product_details/screen/product_details_screen.dart';
import 'package:home_commerce/features/shipping_address/screen/shipping_address_screen.dart';
import 'package:home_commerce/features/signup/screen/signup_screen.dart';
import 'package:home_commerce/features/splash/screen/splash_screen.dart';


class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      initialRoute:"splash" ,
      routes: {
        "splash": (context) => SplashScreen(),
        "login" : (context) => LoginScreen(),
        "signup" : (context) => SignupScreen(),
        "home" : (context) => HomeScreen(),
        "categories" : (context) => CategoriesScreen(),
        "product" : (context) => ProductDetailsScreen(),
        "search" : (context) => SearchScreen(),
        "wishList": (context) => WishlistScreen(),
        "account": (context) => AccountScreen(),
        "cart" : (context) => CartScreen(),
        "checkout" : (context) => CheckoutScreen(),
        "payment" : (context) => PaymentScreen(),
        "notifications" : (context) => NotificationsScreen(),
        "myCards" : (context) => MyCardsScreen(),
        "shippingAddress" : (context) => ShippingAddressScreen(),
        "languages" : (context) => LanguagesScreen(),
        "appRoot" : (context) => AppRoot(),
        "mainScreen" : (context) => MainScreen(),
        "verification" : (context) => VerificationScreen(),
      },
    );
  }
}
