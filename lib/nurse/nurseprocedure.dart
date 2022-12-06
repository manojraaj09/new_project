import 'package:flutter/material.dart';

import 'nursecare_page.dart';
import 'onlinenurse_page.dart';

class NurseProcedure extends StatefulWidget {
  const NurseProcedure({Key? key}) : super(key: key);

  @override
  State<NurseProcedure> createState() => _NurseProcedureState();
}

class _NurseProcedureState extends State<NurseProcedure> {
  String dropdownvalue = '1';

  // List of items in our dropdown menu
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

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
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  'CHOOSE PROCEDURES DAY OR NUMBER',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Image.asset('assets/images/iv.jpg'),
                            ));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/iv.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'Home Care',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 90,),

                    DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),

                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue){
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        })
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Image.asset('assets/images/iv.jpg'),
                            ));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/iv.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'STITCHING',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 90,),

                    DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),

                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue){
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        })
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Image.asset('assets/images/iv.jpg'),
                            ));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/iv.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'IV DRIP',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 110,),

                    DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),

                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue){
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        })
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const OnlineNurse()));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
