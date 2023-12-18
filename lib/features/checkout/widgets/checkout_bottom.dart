import 'package:flutter/material.dart';
class CheckoutBottom extends StatelessWidget {
  const CheckoutBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 60, 10, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total',style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
              SizedBox(height: 6,),
              Text('\$ 170.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'payment');
                },
                child: Text('Pay Now',style: TextStyle(fontSize: 15),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent), // Change color as needed
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 15,horizontal: 25)), // Adjust padding for size
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
