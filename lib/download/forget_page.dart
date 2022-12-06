import 'package:flutter/material.dart';

import '../pain/reset_password.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top:50, left:10),
                  child: const Icon(
                    Icons.help_outline_outlined,
                    color: Colors.teal,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10,top:20),
                  child: Text(
                    'Its okay! Reset Your Password',
                    style: TextStyle(
                        color: Color(0xFF42afc6),
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        //style: const TextStyle(height: 0.4),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color:Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color:Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color:Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          hintText: ('Enter Mobile number'),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF344543),
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const ResetPage()));
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              const SizedBox(height: 48,),
          //     Container(
          //         // width:  MediaQuery.of(context).size.width,
          //         // height:  MediaQuery.of(context).size.height,
          //
          //         alignment:Alignment.bottomCenter,
          //         padding: const EdgeInsets.only(top: 53),
          //
          //         child: const Image(image: AssetImage('assets/images/Group.png')))
              ],
            ),
          ),


    );
  }
}
