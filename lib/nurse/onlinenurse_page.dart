import 'package:flutter/material.dart';
import 'package:practo/Nurse/nurse_page.dart';

import 'package:practo/successful.dart';

import 'nursecare_page.dart';

class OnlineNurse extends StatelessWidget {
  const OnlineNurse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nursing Staff',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const NurseCare()));
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    // color: Color(0xFFeee9e9),
                      color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/Nurse.png'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                        const Text(
                            'Clara Barton',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        const  Text(
                            'Holy Angels Hospital',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            'ANM',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '10 yr Experience ',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '9:30 Am - 9:30 Pm',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const Text(
                            'Procedure Fee - ₹100',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                         const Text(
                            'Total Cast - ₹1000',
                            style: TextStyle(color: Colors.black, fontSize:16),
                          ),
                          const SizedBox(height: 8,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => const Successfull()));
                            },
                            child: Container(
                             // margin: EdgeInsets.only(left: 70),
                              height: 40,
                              width: 100,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF4385f5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )

                        ],
                      ),

                    )
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    // color: Color(0xFFeee9e9),
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/Nurse.png'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       const   Text(
                            'Reena Singh',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const Text(
                            'Bhagat Hospital Delhi',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          const  Text(
                            'GNM',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '10 yr Experience ',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '9:30 Am - 9:30 Pm',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const Text(
                            'Procedure Fee - ₹100',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const Text(
                            'Total Cast - ₹1000',
                            style: TextStyle(color: Colors.black, fontSize:16),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 40,
                            width: 100,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Color(0xFF4385f5),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    // color: Color(0xFFeee9e9),
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/Nurse.png'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                         const Text(
                            'Neha Jain',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                       const   Text(
                            'Dr.Baba Saheb Ambedakar hospital',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          const  Text(
                            'GNM',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '10 yr Experience ',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const  Text(
                            '9:30 Am - 9:30 Pm',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const Text(
                            'Procedure Fee - ₹100',
                            style: TextStyle(color: Colors.black, fontSize:14),
                          ),
                          const Text(
                            'Total Cast - ₹1000',
                            style: TextStyle(color: Colors.black, fontSize:16),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 40,
                            width: 100,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Color(0xFF4385f5),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20),
            //   child: Container(
            //     //padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            //     height: 40,
            //     width: 300,
            //     decoration: BoxDecoration(
            //         color: const Color(0xFF689df7),
            //         borderRadius: BorderRadius.circular(20)),
            //     child: FlatButton(
            //       onPressed: () {
            //         // Navigator.push(context,
            //         //     MaterialPageRoute(builder: (_) => const StorePage()));
            //       },
            //       child: const Text(
            //         'Book',
            //         style: TextStyle(fontSize: 14, color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }
}
