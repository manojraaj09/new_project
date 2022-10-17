import 'dart:convert';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../servise.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {


  final name =TextEditingController();
  final email =TextEditingController();
  final mobile =TextEditingController();
  final message =TextEditingController();
  Serves serves=Serves();

  void bookdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url2 = Uri.parse(serves.url +"contactus.php");

    var response = await http.post(url2, body: {
      "regid":prefs.getString('regid'),
      "name": name.text,
      "email": email.text,
      "mobile": mobile.text,
      "message": message.text,
    },);
    if (response.statusCode == 200) {
    //  print(response.body);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: const Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller:name ,
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
                          hintText: ('Name'),
                          prefixIcon: Icon(Icons.person),
                          hintStyle: TextStyle(fontSize: 13)),

                    ),
                  )),
              const SizedBox(height: 20,),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: email,
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
                          hintText: ('abc@gmail.com'),
                          prefixIcon: Icon(Icons.mail),
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  )),
              const SizedBox(height: 20,),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: mobile,
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
                          prefixIcon: Icon(Icons.call),
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  )),
              const SizedBox(height: 20,),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: SizedBox(
                    height: 100,
                    //width: 300,
                    child: TextField(
                      controller: message,
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
                          hintText: ('message'),
                          prefixIcon: Icon(Icons.message),
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    bookdata();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => const HomePage()));
                  },
                  child: const Text(
                    'Send message',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height:80,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(onPressed:()async{
                      bool? res = await FlutterPhoneDirectCaller.callNumber('8427824392');
                    },
                      child: const Icon(Icons.call),
                      backgroundColor: Colors.green,
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
