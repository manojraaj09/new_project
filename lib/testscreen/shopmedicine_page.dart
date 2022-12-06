import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:practo/successful.dart';

import '../login/medicalstore_page.dart';

class CardPicture extends StatelessWidget {
  const CardPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Medicine',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const MedicalStore()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: const Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.green,
                  child:const Icon(Icons.call,),
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.fromLTRB(30, 0,30, 0),
              child: TextFormField(
                maxLines: 30,
                minLines: 1,
                keyboardType: TextInputType.multiline,
                decoration:const InputDecoration(
                  hintText: 'Enter Medicine Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),

              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                'Or',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: DottedBorder(
                  dashPattern: [4, 2],
                  strokeWidth: 1,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
                    height: 120,
                    width: 290,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.camera_alt_rounded,
                          size: 50,
                        ),
                      ],
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            DottedBorder(
                dashPattern: [4, 2],
                strokeWidth: 1,
                child: Container(
                  height: 40,
                  width: 290,
                  //color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                          size: 30,
                        ),

                      ],
                    ),
                  ),
                ),
            const SizedBox(height:50,),


            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            //   child: Row(
            //     children: [
                  // InkWell(
                  //   onTap: (){},
                  //   child: Container(
                  //     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //     height: 30,
                  //     width: 130,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFFd9e6fd),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Row(
                  //       children:const [
                  //          Icon(
                  //           Icons.currency_rupee,
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           'Pay Online',
                  //           style: TextStyle(color: Colors.blueAccent, fontSize: 16,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 40,
                  // ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //     height: 40,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFFd9e6fd),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.call,
                  //           color: Colors.green,
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           '   Call',
                  //           style: TextStyle(
                  //               color: Colors.blueAccent,
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
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
                  'Pay Online',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
