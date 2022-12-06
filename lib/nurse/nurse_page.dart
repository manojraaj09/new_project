import 'package:flutter/material.dart';

import '../download/home_screen.dart';
import 'nursecare_page.dart';

class Nurse extends StatelessWidget {
  const Nurse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nursing Staff',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading:false,
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
                        MaterialPageRoute(builder: (_) => const NurseCare()));
                  },
                  child: const Text(
                    'Home Visit',
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
