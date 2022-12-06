import 'package:flutter/material.dart';


class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF4385f5),
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0,
            title: const Text(
              'Booking',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'My Booking',
                ),
                Tab(
                  text: 'Complete ',
                ),
                Tab(
                  text: 'Cancel',
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const BookProfile()));
              },
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(

                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const ListTile(
                          leading: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/boy.jpg')),
                          title: Text(
                            'Service Booked By-Aman Singh\nService Given By- AAA\nService-XYZ\nProcedure-ABCD',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Moti Nagar,8565874510,\nOnline Payment\nTotal payment-500Rs',style: TextStyle(color: Colors.black),),
                        ),
                      ),
                    );
                  }),
            ),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/boy.jpg')),
                        title: Text(
                          'Service Booked By-Aman Singh\nService Given By- AAA\nService-XYZ\nProcedure-ABCD',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Moti Nagar,8565874510,\nOnline Payment\nTotal payment-500Rs\nService Given By- AAA',style: TextStyle(color: Colors.black),),
                        trailing: Text(
                          'Completed',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/boy.jpg')),
                        title: Text(
                          'Service Booked By-Aman Singh\nService Given By- AAA\nService-XYZ\nProcedure-ABCD',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Moti Nagar,8565874510,\nOnline Payment\nTotal payment-500Rs\nService Given By- AAA',style: TextStyle(color: Colors.black),),
                        trailing: Text(
                          'Canceled',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  );
                }),
          ])),
    );
  }
}
