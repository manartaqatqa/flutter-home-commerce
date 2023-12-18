import 'package:flutter/material.dart';
import 'package:home_commerce/features/checkout/widgets/checkout_bottom.dart';
import 'package:home_commerce/features/checkout/widgets/payment_method.dart';
import 'package:home_commerce/features/checkout/widgets/your_cart_items.dart';
class CheckoutScreenBody extends StatelessWidget {
   CheckoutScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Center(
            child: const Text(
              "Check Out",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Address",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    Text(
                      "Change Address",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    height: 100, // Set the desired height of the card
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                      style: TextStyle(
                        color: Colors.grey[600], // Set the text color to grey
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Mode",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    Text(
                      "Change Mode",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Flat Rate',
                      style: TextStyle(
                        color: Colors.grey[600], // Set the text color to grey
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                YourCartItems(),
                SizedBox(height: 20,),
                PaymentMethod(),
              ],
            ),
          ),
          CheckoutBottom()
        ],
      ),
    );
  }
}
