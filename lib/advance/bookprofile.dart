import 'package:flutter/material.dart';
class BookProfile extends StatelessWidget {
  const BookProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            '22 Years',
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
                            'Address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            'Delhi',
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
                            'Disease',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          title:Text(
                            'Paralysis',
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
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => const OtpPage()));
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 14, color: Colors.white),
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
