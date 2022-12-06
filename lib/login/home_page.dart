import 'package:flutter/material.dart';

import 'otp.dart';

//import 'package:practo/forget/forget_page.dart';

//import '../navigation/navigation_page.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final mobile=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [

            Container(
         padding:const EdgeInsets.only(top: 30),
              height: 150,
              //padding: const EdgeInsets.all(1),
              child: Image.asset('assets/images/Log.png'),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const  EdgeInsets.only(top:10),
              child:const Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,color: Color(0xFF4385F5)
                ),
              ),

            ),
            const SizedBox(height:20,),
            Container(
              alignment: Alignment.topCenter,
              // padding: const  EdgeInsets.only(top:5),
              child:const Text(
                'Please login your account',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,color: Colors.black
                ),
              ),

            ),
            const SizedBox(height: 40,),

            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: mobile,
                    keyboardType: TextInputType.number,
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
                      hintText: ('Enter Mobile number'),
                      hintStyle: TextStyle(fontSize: 13)
                    ),
                  ),
                )),

            const SizedBox(
              height: 10,
            ),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            //     child: SizedBox(
            //       height: 40,
            //       child: TextField(
            //         style: const TextStyle(
            //             // height: 0.4,
            //             ),
            //         enabled: true,
            //         decoration: InputDecoration(
            //           fillColor: Colors.white,
            //           focusedBorder: OutlineInputBorder(
            //               borderSide:
            //                   const BorderSide(width: 1,  color: Color(0xFF4385f5)),
            //               borderRadius: BorderRadius.circular(20)),
            //           enabledBorder: OutlineInputBorder(
            //               borderSide:
            //                   const BorderSide(width: 1,  color: Color(0xFF4385f5)),
            //               borderRadius: BorderRadius.circular(20)),
            //           border: OutlineInputBorder(
            //               borderSide:
            //                   const BorderSide(width: 1, color: Color(0xFF4385f5)),
            //               borderRadius: BorderRadius.circular(20)),
            //           hintText: ('Enter Password'),
            //             hintStyle: TextStyle(fontSize: 13)
            //         ),
            //       ),
            //     )),
            // const SizedBox(
            //   height: 10,
            // ),

            // const SizedBox(
            //   height: 20,
            // ),
            // Container(
            //   height: 40,
            //   width: 300,
            //   decoration: BoxDecoration(
            //       color: Color(0xFF689df7),
            //       borderRadius: BorderRadius.circular(20)),
            //   child: FlatButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (_) => const Screen1()));
            //     },
            //     child: const Text(
            //       'Login',
            //       style: TextStyle(fontSize: 14, color: Colors.white),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   alignment: Alignment.topCenter,
            //   // padding: const  EdgeInsets.only(top:5),
            //   child:const Text(
            //     'Or',
            //     style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,color: Color(0xFF689df7)
            //     ),
            //   ),
            //
            // ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFF689df7),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  if(mobile.text.length==10){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  OtpVerification(mobile1: mobile.text.toString(),)));
                }},
                child: const Text(
                  'Login with OTP',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            // const SizedBox(
            //   height: 10,
            // ),
            //
            // const SizedBox(
            //   height: 20,
            // ),
            // Container(
            //   height: 40,
            //   width: 200,
            //   decoration: BoxDecoration(
            //       color: const Color(0xFF689df7),
            //       borderRadius: BorderRadius.circular(20)),
            //   child: FlatButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (_) => const SignPage()));
            //     },
            //     child: const Text(
            //       'Create Account',
            //       style: TextStyle(fontSize: 14, color: Colors.white),
            //     ),
            //   ),
            // ),
          ]),
        ),
      ),
    );
  }
}
