import 'package:flutter/material.dart';
class YourActivity extends StatelessWidget {
   YourActivity({super.key});
  List<IconData> icons = [Icons.check, Icons.shop_2_outlined, Icons.credit_card];
  List<String> titles = ['Order Arrived', 'Order Success', 'Payment Confirmed'];
  List<String> subtitles = [
    'Order 98375467478 has been completed & arrived at the destination address (please rate your order)',
    'Order 98375467478 has been success please wait for the product to be sent',
    'Order 98375467478 has been confirmed please wait for the product to be sent'];
  List<String> dates = ['Yesterday 10:45 AM', 'July 20 2020 8 AM', 'Product to be sent'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Activity",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        Container(
            width: 400,
            height: 350,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0), // Adjust the value as needed
              itemCount: icons.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        icons[index],
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    title:  Text(
                      titles[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subtitles[index],
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          dates[index],
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
        ),
      ],
    );
  }
}
