import 'package:flutter/material.dart';
import 'package:home_commerce/features/notifications/widgets/promotions.dart';
import 'package:home_commerce/features/notifications/widgets/your_activity.dart';
class NotificationsScreenBody extends StatelessWidget {
   NotificationsScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Text(
            "Notifications",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(height: 20,),
          Promotions(),
          SizedBox(height: 10,),
          YourActivity(),
        ],
      ),
    );
  }
}
