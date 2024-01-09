
import 'package:flutter/material.dart';
import 'package:home_commerce/features/main_screen/main_screen.dart';
class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});
Route _buildRoute() {
  return PageRouteBuilder(
      pageBuilder: (context,animation,secondaryAnimation) => const MainScreen(),
    transitionDuration: Duration(seconds: 2),
    transitionsBuilder: (context,animation,secondaryAnimation,child) {
        return SlideTransition(
            position: animation.drive(Tween(begin: const Offset(-1,0),end: Offset.zero)),
      child: FadeTransition(
      opacity: animation.drive(Tween(begin:0.0,end: 1.0)),
      child: child,
      )
        );
    }
  );
}
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
            Navigator.push(context, _buildRoute() );
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
