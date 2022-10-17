import 'package:flutter/material.dart';
import 'package:practo/pain/selectdate.dart';

import '../advance/chooseday_page.dart';
import '../download/home_screen.dart';


class PhysiotherapyPage extends StatelessWidget {
  const PhysiotherapyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Physiotherapy',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/Secure.png'),
              ),
              ElevatedButton(

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  selectdate(type:"physiotherapyhome")));

                },
                child: const Text(
                  "Home Visit",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  selectdate(type:"physiotherapycenter")));

                },
                child: const Text(
                  "At Physiotherapy Center",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
