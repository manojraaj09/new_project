import 'package:flutter/material.dart';

import '../nurse/online_page.dart';


class DoctorOnline extends StatefulWidget {
  const DoctorOnline({Key? key}) : super(key: key);

  @override
  State<DoctorOnline> createState() => _DoctorOnlineState();
}

class _DoctorOnlineState extends State<DoctorOnline> {
  int _val = 1;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Online Consultation',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Online()));
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 80, top: 30),
                child: const Text(
                  'Select The Procedure',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    Radio<int>(
                        value: 1,
                        groupValue: _val,
                        onChanged: (value) {
                          setState(() {
                            _val = value!;
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Ortho',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    Radio<int>(
                        value: 0,
                        groupValue: _val,
                        onChanged: (value) {
                          setState(() {
                            print(value);
                            _val = value!;
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Medicine',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    Radio<int>(
                        value: 3,
                        groupValue: _val,
                        onChanged: (value) {
                          setState(() {
                            _val = value!;
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Cardio',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xFF689df7),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => const DoctorPage()));
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
