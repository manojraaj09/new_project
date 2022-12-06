import 'package:flutter/material.dart';


import '../login/home_page.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
                  Container(
                    padding: const EdgeInsets.only(top:50, left:10),
                    child: const Icon(
                      Icons.lock_rounded,
                      color: Colors.teal,
                      size: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:20, top:30),
                    child: const Text(
                      "Your password has been\n    Reset Successfully!",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
              const SizedBox(
                height:60,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFF344543),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  HomePage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 60,),
              Container(
                  // width:  MediaQuery.of(context).size.width,
                  // height:  MediaQuery.of(context).size.height,
                  alignment:Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top:98),

                  child: const Image(image: AssetImage('assets/images/Group.png')))

                ],
              ),

          ),

    );
  }
}
