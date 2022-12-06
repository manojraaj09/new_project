import 'package:flutter/material.dart';

import '../advance/book_screen.dart';
import '../download/family_page.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/family.jpg'),
                radius: 50,
                backgroundColor: Colors.blue[800],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'Family Member',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'Select your family member',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                // padding: EdgeInsets.only(top:50),
                height: 50,
                width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(),),

                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      //color: Colors.blue,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/avatar.jpg'),
                          radius: 30,
                          backgroundColor: Colors.blue[800],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ram",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Self | Male | 28-June-2022',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
            const SizedBox(height: 30,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color:const  Color(0xFF4385f5),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const FamilyPage()));
                },
                child: const Text(
                  'Add Family Member',
                  style: TextStyle(fontSize: 14, color:Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color(0xFF4385f5),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BookPage()));
                },
                child: const Text(
                  'Proceed',
                  style: TextStyle(fontSize: 14, color:Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
