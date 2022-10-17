import 'package:flutter/material.dart';

import '../login/home_page.dart';
import '../login/navigation_page.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Screen4.png',
                ),
                fit: BoxFit.cover)),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (_) =>  HomePage()));
          },
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xFF689df7),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
