import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../login/navigation_page.dart';

import 'screen1_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => checksesiion());
  }
  checksesiion() async{

    SharedPreferences prefs =await SharedPreferences.getInstance();

    if(prefs.getString('regid')!=null){
      print('login success');
      Navigator.push(
        context,MaterialPageRoute(builder: (context)=> NavigationPage()),
      );

    }else{
      print('not login');
      Navigator.push(
        context,MaterialPageRoute(builder: (context)=> Screen1()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF4385f5),
      body:  Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image:
            DecorationImage(image: AssetImage('assets/images/Secure.png'),
             // fit: BoxFit.fill




            ))
        ,
      ),


    );
  }
}
