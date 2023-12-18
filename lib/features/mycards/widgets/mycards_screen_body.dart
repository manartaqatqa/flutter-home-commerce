import 'package:flutter/material.dart';
class MyCardsScreenBody extends StatelessWidget {
  const MyCardsScreenBody({super.key});

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
                    "My Cards",
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
          SizedBox(height: 10,),
          Text(
            "Your Payment Cards",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600]
            ),
          ),
          Container(
            width: 400,
            height: 300,
            child: Image.asset('images/visa_card.png'),
          ),
          Container(
            width: 400,
            height: 300,
            child: Image.asset(
              'images/master_card.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
