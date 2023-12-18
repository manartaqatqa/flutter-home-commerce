import 'package:flutter/material.dart';
class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.check_circle,color: Colors.deepPurpleAccent,size: 70,),
        SizedBox(height: 20,),
        Text(
          'Payment Successful!',
          style: TextStyle(
              fontSize: 20
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 50),
          child: Text(
            'Your order will be processed and sent to you as soon as possible',
            style: TextStyle(
                fontSize: 15
            ),
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'home' );
          },
          child: Text('Continue Shopping',style: TextStyle(fontSize: 16),),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent), // Change color as needed
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 20,horizontal: 120)), // Adjust padding for size
          ),
        )
      ],
    );
  }
}
