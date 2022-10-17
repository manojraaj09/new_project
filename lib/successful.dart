import 'dart:async';

import 'package:flutter/material.dart';

import 'login/navigation_page.dart';

class Successfull extends StatefulWidget {
  const Successfull({Key? key}) : super(key: key);

  @override
  State<Successfull> createState() => _SuccessfullState();
}

class _SuccessfullState extends State<Successfull> {


  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => checksesiion());
  }
  checksesiion() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => NavigationPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Successful'),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/aap.jpg'),
            ),
            const Center(
              child: Text(
                'Your Booking is Successful',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const Center(
              child: Text(
                'Your transaction id is 1234578',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
