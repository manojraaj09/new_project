import 'package:flutter/material.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4385f5),
        automaticallyImplyLeading: true,
        elevation: 0,
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
