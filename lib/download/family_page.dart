import 'package:flutter/material.dart';

import '../advance/book_screen.dart';



class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
        body:SingleChildScrollView(
          child: Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                'Add Family Member',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'Enter your family details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    //style: const TextStyle(height: 0.4),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: ('Mobile number'),
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                   // style: const TextStyle(height: 0.4),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: ('Full Name'),
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                   //style: const TextStyle(height: 0.4),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: ('Email ID'),
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    //style: const TextStyle(height: 0.4),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1,color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: ('Relation'),
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                  ),
                )),
            const SizedBox(height: 20,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color(0xFF4385f5),

                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BookPage()));},
                child: const Text(
                  'ADD PATIENT',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ],
      ),
          ),
        )
    );
  }
}
