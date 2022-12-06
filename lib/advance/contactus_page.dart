import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        centerTitle: true,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (_) => const HomeScreen()));
        //   },
        //   child: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //     size: 30,
        //   ),
        // ),
        automaticallyImplyLeading: true,
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
                child: FlatButton(
                  onPressed: () {
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
                    FloatingActionButton(onPressed:(){},
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
