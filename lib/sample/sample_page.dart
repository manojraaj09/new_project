import 'package:flutter/material.dart';

import '../advance/book_screen.dart';
import '../download/home_screen.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Choice',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        leading: GestureDetector(
          onTap: (){ Navigator.push(context,
              MaterialPageRoute(builder: (_) => const HomeScreen()));},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: const Color(0xFF689df7),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  //padding: const EdgeInsets.only(top: 20, left: 10),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/Secure.png',
                    height: 300,
                    width: 300,
                  )),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const BookPage()));
                  },
                  child: const Text(
                    'Sampling from home',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color:const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const BookPage()));
                  },
                  child: const Text(
                    'Sampling at Pathology',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
