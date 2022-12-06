import 'package:flutter/material.dart';

import '../advance/list_page.dart';


class SkinPage extends StatelessWidget {
  const SkinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Your Health Concern',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){ Navigator.push(context,
              MaterialPageRoute(builder: (_) => const DoctorList()));},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: Color(0xFF689df7),

      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      style: const TextStyle(
                        //height: 0.4,
                      ),
                      enabled: true,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 40),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          hintText: ('Search Specialists'),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  )),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFFd9e6fd), borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          //color: Colors.teal,
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/hair.jpg'),
                          )
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Neha Singh',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5,),

                            const Text(
                              'General Physician',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '20 Years experience',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Punjab-PGI',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Availability:Yes/No',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '2:30 Pm-9:Pm',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Fee:200 Rs',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children:const[
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),

                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (_) => const SkinCnf()));
                  },
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xFF4385f5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text('Book Now',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
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
              const SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFFd9e6fd), borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          //color: Colors.teal,
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/hair.jpg'),
                          )
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Neha Singh',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'General Physician',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '15 Years experience',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Punjab-PGI',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Availability:Yes/No',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '2:30 Pm-9:Pm',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Fee:200 Rs',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children:const[
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),

                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: 100,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF4385f5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text('Book Now',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFFd9e6fd),borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          //color: Colors.teal,
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/hair.jpg'),
                          )
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Neha Singh',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Surgeon',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '20 Years experience',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Punjab-PGI',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Availability:Yes/No',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              '2:30 Pm-9:Pm',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Fee:200 Rs',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children:const[
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Icon(Icons.star,color: Colors.yellow,),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: 100,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF4385f5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text('Book Now',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}



