import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;
import '../login/home_page.dart';
import '../login/navigation_page.dart';
import '../servise.dart';
//

class SignPage extends StatefulWidget {
   const SignPage({Key? key, required this.mobile}) : super(key: key);
final mobile;
  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  TextEditingController dateinput = TextEditingController();





  String? errtext;
  Serves serves=Serves();


  Future singUp() async{
    SharedPreferences prefs =await SharedPreferences.getInstance();
    //print('8382946376');

      var url2 = Uri.parse("${serves.url}register.php");

      var response = await http.post(url2, body: {
        'name': name.text,
        'mobile': widget.mobile,
        'email': email.text,
        'gender': gender.text,
        'dob': dateinput.text,


      });
      print(url2);
      if (response.statusCode == 200) {
        var check = jsonDecode(response.body);




          prefs.setString('regid', check.toString());
          prefs.setString('name', name.text);


          Navigator.push(
            context,MaterialPageRoute(builder: (context)=> const NavigationPage()),
          );


      }

  }



  final name= TextEditingController();
  final gender= TextEditingController();
  final mobile= TextEditingController();
  final email= TextEditingController();



  final _formKey = GlobalKey<FormState>();








  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () { Navigator.push(context,
                  MaterialPageRoute(builder: (_) =>  HomePage()));

              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF689df7),
              )),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.topCenter,
              child: Image.asset(
                  'assets/images/rafiki.png',
                  height: 200,
                  width: 200,
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                        hintStyle: const TextStyle(fontSize: 13)),
                  ),
              )),


          Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: gender,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    //  style: const TextStyle(height: 0.4),
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
                        hintText: ('Gender'),
                        hintStyle: const TextStyle(fontSize: 13)),
                  ),
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextFormField(
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                  style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Color(0xFF4385f5)),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Color(0xFF4385f5)),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Color(0xFF4385f5)),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: ('Email'),
                  ),)),


          Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: SizedBox(
                  height: 40,
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    // style: const TextStyle(height: 0.4),
                    controller: dateinput,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'DOB',
                      hintStyle: const TextStyle(fontSize: 13),
                      prefixIcon: const Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(pickedDate);
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);
                        setState(() {
                          dateinput.text = formattedDate;
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
              )),

          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
                  color: const Color(0xFF689df7),
                  borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  singUp();
                }
              },
              child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ]),
                ))));
  }
}
