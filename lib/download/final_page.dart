import 'package:flutter/material.dart';
import 'package:practo/successful.dart';

import '../advance/ambulance_page.dart';


class Final extends StatelessWidget {
  const Final({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ambulance',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Ambulance()));
          },
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
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/Ambulance.png')),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Service Provider Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '         Be - Secure',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Ambulance Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '         DL 32 A4547',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Doctor Charge',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                       1000',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Nurse Charge',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                        500',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Cost Rs/km',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                           20',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Availability',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                           Yes/No',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children:const [
                  Text('Source',  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),),
                  SizedBox(width: 40,),
                  Text('To', style: TextStyle(color: Colors.black, fontSize: 16),),
                  SizedBox(width: 40,),
                  Text('Destination',  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Total Journey',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                       10Km',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9e6fd),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  Text(
                    'Total Cost',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '                             10000',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Successfull()));
                  },
                  child: const Text(
                    'Pay',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
