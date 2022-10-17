import 'package:flutter/material.dart';

class BookPathology extends StatelessWidget {
  const BookPathology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Book Pathology Test',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor:const  Color(0xFF4385f5),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.bloodtype,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      ' Complete Blood Count:CBC (2022)',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.report_gmailerrorred,
                    color: Colors.black,
                  ),
                  Text(
                    '     No special preparation required',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  Text(
                    '     26 Parameter(s) covered',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.notes,
                    color: Colors.black,
                  ),
                  Text(
                    '     Daily',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Row(
                children: [
                 const Text('04/07/2022',style: TextStyle(color: Colors.black),),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text(
                      'Paid',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
