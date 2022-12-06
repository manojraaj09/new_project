import 'package:flutter/material.dart';

import 'profilepage_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF689df7),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: const CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.greenAccent,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/boy.jpg'),
                  ),
                ),
              ),
              // Container(
              //     padding: const EdgeInsets.only(top: 50, left: 30),
              //     child: Card(
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(15.0),
              //       ),
              //     )),
              // const SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   padding: const EdgeInsets.only(left: 30),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: const [
              //       Text(
              //         'Age -',
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 16),
              //       ),
              //       SizedBox(
              //         width: 40,
              //       ),
              //       Text('        24')
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 80,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: const[
                      Expanded(
                        child: ListTile(
                            leading: Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        title:Text(
                          'Aman Kumar',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,

                             ),
                        ), ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 80,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: const[
                      Expanded(
                        child: ListTile(
                          leading: Text(
                            'Age',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            '24 Years',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,

                            ),
                          ), ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 80,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: const[
                      Expanded(
                        child: ListTile(
                          leading: Text(
                            'Gender',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            'Male',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,

                            ),
                          ), ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 80,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: const[
                      Expanded(
                        child: ListTile(
                          leading: Text(
                            'Mobile Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            '1234567890',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,

                            ),
                          ), ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 80,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: const[
                      Expanded(
                        child: ListTile(
                          leading: Text(
                            'Email-ID',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            'abc@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,

                            ),
                          ), ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF689df7),
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const ProfilePage()));
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
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
