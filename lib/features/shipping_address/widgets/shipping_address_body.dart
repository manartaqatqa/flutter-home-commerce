import 'package:flutter/material.dart';
import 'package:home_commerce/features/shipping_address/widgets/shipping_address_card.dart';
class ShippingAddressBody extends StatelessWidget {
  const ShippingAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Shipping Adress",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              Icon(Icons.add)
            ],
          ),
          SizedBox(height: 18,),
          Text(
            "Your Shipping Adresses",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600]
            ),
          ),
          SizedBox(height: 20,),
          Container(
              width: 400,
              height: 500,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0), // Adjust the value as needed
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ShippingAddressCard();
                },
              )
          ),
        ],
      ),
    );
  }
}
