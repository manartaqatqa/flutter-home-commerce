import 'package:flutter/material.dart';
class PaymentMethod extends StatelessWidget {
   PaymentMethod({super.key});
  final List<String> paymentPaths = [
    'images/paypal.png',
    'images/visa.png',
    'images/mastercard.png',
    'images/applepay.png',
    'images/googlepay.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Payment Method",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: paymentPaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Card(
                        elevation: 8.0,
                        child: Image.asset(
                          paymentPaths[index],
                          width: 75,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
