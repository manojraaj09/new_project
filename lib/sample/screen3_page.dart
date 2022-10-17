import 'package:flutter/material.dart';

import 'screen4_page.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Screen3.png',
                ),
                fit: BoxFit.cover)),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder: (_) => const Screen4()));},
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xFF689df7),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
