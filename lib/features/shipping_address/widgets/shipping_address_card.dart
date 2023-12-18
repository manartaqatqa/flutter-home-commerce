import 'package:flutter/material.dart';
class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        leading: Container(
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.deepPurpleAccent,
          ),
        ),
        title:  Text(
          "John Doe, +972 593 461 324",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Schools Street, Behind the official school, Lebanon, 1600',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
