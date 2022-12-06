import 'package:flutter/material.dart';
import '../Nurse/nurse_page.dart';
import 'nurseprocedure.dart';

class NurseCare extends StatefulWidget {
  const NurseCare({Key? key}) : super(key: key);

  @override
  State<NurseCare> createState() => _NurseCareState();
}

class _NurseCareState extends State<NurseCare> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;

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
                  context, MaterialPageRoute(builder: (_) => const Nurse()));
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
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  'CHOOSE PROCEDURE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    const SizedBox(width:20,),
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
                    const SizedBox(width: 30,),
                    const Text(
                      'Home Care',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    const SizedBox(width: 20,),
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
                    const SizedBox(width: 30,),
                    const Text(
                      'STITCHING',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    const SizedBox(width: 20,),
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
                    const SizedBox(width: 30,),
                    const Text(
                      'IV DRIP',
                      style: TextStyle(color: Colors.black),
                    ),

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
                        MaterialPageRoute(builder: (_) => const NurseProcedure()));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
