import 'package:flutter/material.dart';
import 'package:home_commerce/features/notifications/widgets/notifications_screen_body.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationsScreenBody(),
    );
  }
}

