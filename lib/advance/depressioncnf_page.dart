import 'package:flutter/material.dart';

import '../pain/physician_page.dart';

class DepressionCnf extends StatelessWidget {
  const DepressionCnf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PhysicianPage(drid: null,)));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xFF689df7),
          title: const Text(
            'Book an Appointment',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                        AssetImage('assets/images/physician.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dr. Neha Singh',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        '(General Surgeon)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Choose A Date',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                // const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 1 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           1 Slot Available',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 2 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           No Slot Available',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 3 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           5 Slot Available',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 4 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           10 Slot Available',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 5 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           No Slot Available',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 6 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           No Slot Available',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Today, 7 jul',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: '           6 Slot Available',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                            )),
                      ],
                    ),
                  ),
                ),

                const Text(
                  'Choose A Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: const Text('9:30 to 12:30')),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: const Text('1:30 to 5:30')),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            height: 45,
                            width: 130,
                            color: const Color(0xFFeee9e9),
                            child: const Text('1:30 to 5:30')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF689df7),
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {},
                    child: const Text(
                      'PAY 200 Rs',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF689df7),
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {},
                    child: const Text(
                      'Confirm',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

