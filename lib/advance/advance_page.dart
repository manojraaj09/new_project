import 'package:flutter/material.dart';

import '../download/final_page.dart';
import 'ambulance_page.dart';


class Advance extends StatefulWidget {
  const Advance({Key? key}) : super(key: key);

  @override
  State<Advance> createState() => _AdvanceState();
}

class _AdvanceState extends State<Advance> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  bool valuefifth = false;
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
                padding:const  EdgeInsets.only(top: 20,),
                child: const Text(
                  'Select Facilities',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'O2',
                      style: TextStyle(color: Colors.black),
                    ),
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.black,
                      value: this.valuesecond,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuesecond = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'BI-PAP',
                      style: TextStyle(color: Colors.black),
                    ),
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.black,
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefirst = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'C-PAP',
                      style: TextStyle(color: Colors.black),
                    ),
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.black,
                      value: this.valuethird,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuethird = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ventilator',
                      style: TextStyle(color: Colors.black),
                    ),
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.black,
                      value: this.valuefourth,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefourth = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Provide Destination',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 25,),
                    SizedBox(
                      height: 40,
                      width: 180,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: ('Destination'),
                            hintStyle: TextStyle(fontSize: 13)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Approx Distance (Up & Down)',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: TextField(
                       // keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: ('Approx Distance(Up & Down)'),
                            hintStyle: TextStyle(fontSize: 13)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Final()));
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
