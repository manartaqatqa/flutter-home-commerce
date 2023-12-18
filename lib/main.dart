
import 'package:flutter/material.dart';
import 'package:home_commerce/features/account/screen/account_screen.dart';
import 'package:home_commerce/features/cart/screen/cart_screen.dart';
import 'package:home_commerce/features/categories/screen/categories_screen.dart';
import 'package:home_commerce/features/checkout/screen/checkout_screen.dart';
import 'package:home_commerce/features/home/screen/home_screen.dart';
import 'package:home_commerce/features/languages/screen/language_screen.dart';
import 'package:home_commerce/features/mycards/screen/mycards_screen.dart';
import 'package:home_commerce/features/notifications/screen/notifications_screen.dart';
import 'package:home_commerce/features/payments/screen/payment_screen.dart';
import 'package:home_commerce/features/product_details/screen/product_details_screen.dart';
import 'package:home_commerce/features/search/screen/search_screen.dart';
import 'package:home_commerce/features/shipping_address/screen/shipping_address_screen.dart';
import 'package:home_commerce/features/wishlist/screen/wishlist_screen.dart';
void main() {
  runApp(
    MaterialApp(
      initialRoute:"home" ,
      routes: {
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
        "languages" : (context) => LanguagesScreen()
      },
    )
  );
}

