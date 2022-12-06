import 'package:flutter/material.dart';

import 'package:practo/successful.dart';

import '../pain/physiotherapy_page.dart';

class ChooseDay extends StatelessWidget {
  const ChooseDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Physiotherapy Detail',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const PhysiotherapyPage()));
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child:
                      Image.asset('assets/images/be.jpg',),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'APS Physiotherapy Clinic',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Dr. Gaurav Goel',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bachelor of Physiotherapy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '5 Year Experience',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Paralysis ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rohini West Sector 5',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Charge/Visit : 100 Rs',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'No of Days:4',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Total Cost:2000Rs ',
                            style: TextStyle(color: Colors.black),
                          ),

                          // const SizedBox(
                          //   height: 5,
                          // ),
                          // const Text(
                          //   'Home Delivery Available',
                          //   style: TextStyle(
                          //       color: Colors.black, fontWeight: FontWeight.bold),
                          // ),

                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) => const PhysioPay()));
                            },
                            child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child:
                      Image.asset('assets/images/be.jpg'),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'ASP PhysioTherapy Clinic',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Ramesh Singh',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bachelor of Physiotherapy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '5 Year Experience',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Paralysis ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rohini West Sector 5',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Charge/Visit : 100 Rs',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'No of Days:4',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Total Cost:2000Rs ',
                            style: TextStyle(color: Colors.black),
                          ),
                          // const Text(
                          //   'Home Delivery Available',
                          //   style: TextStyle(
                          //       color: Colors.black, fontWeight: FontWeight.bold),
                          // ),

                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) => const CnfPage()));
                            },
                            child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child:
                      Image.asset('assets/images/be.jpg'),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'ASP PhysioTherapy Clinic',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Ramesh Singh',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bachelor of Physiotherapy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '5 Year Experience',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Paralysis ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rohini West Sector 5',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Charge/Visit : 100 Rs',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'No of Days:4',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Total Cost:2000Rs ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) => const CnfPage()));
                            },
                            child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child:
                      Image.asset('assets/images/be.jpg'),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'APS Physiotherapy Clinic',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Dr. Gaurav Goel',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bachelor of Physiotherapy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '5 Year Experience',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Paralysis ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rohini West Sector 5',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Charge/Visit : 100 Rs',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'No of Days:4',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Total Cost:2000Rs ',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) => const CnfPage()));
                            },
                            child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child:
                      Image.asset('assets/images/be.jpg'),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'APS Physiotherapy Clinic',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Dr. Gaurav Gupta',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bachelor of Physiotherapy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '5 Year Experience',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Paralysis ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            'Availability : Yes/No',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rohini West Sector 5',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Charge/Visit : 100 Rs',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'No of Days:4',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Total Cost:2000Rs ',
                            style: TextStyle(color: Colors.black),
                          ),

                          const SizedBox(
                            height: 8,
                          ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Successfull()));

                        },
                        child: Container(
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
                      ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
