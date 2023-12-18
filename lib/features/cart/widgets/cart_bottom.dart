import 'package:flutter/material.dart';
class CartBottom extends StatelessWidget {
  const CartBottom({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub Total',style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                  SizedBox(width: 30,),
                  Text('\$ 150.0')
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                  SizedBox(width: 57,),
                  Text('\$ 170.0')
                ],
              )
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'checkout');
                },
                child: Text('Check Out',style: TextStyle(fontSize: 15),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent), // Change color as needed
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(18)), // Adjust padding for size
                ),
              )
            ],
          )
        ],
      ),
    )
    ;
  }
}
