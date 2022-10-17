import 'package:flutter/material.dart';

import '../advance/wallet_page.dart';
import 'myappointment.dart';

class bookinglist extends StatefulWidget {
  const bookinglist({Key? key}) : super(key: key);

  @override
  State<bookinglist> createState() => _bookinglistState();
}

class _bookinglistState extends State<bookinglist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Booking'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Appointment())
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.medication_liquid_outlined,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('My Appointment',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
                    ),

                  ),
                ),
              ),


InkWell(
  onTap: (){
    Navigator.push(
        context,MaterialPageRoute(
        builder: (_) =>  Booking(type:"homecare"))
    );

  },
  child:   Padding(
    padding: const EdgeInsets.all(15),
    child:   Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.medication_liquid_outlined,size: 30,color: Colors.white,),
          SizedBox(width: 20,),
          Text('Doctor Home Care',style: TextStyle(
  color: Colors.white,
            fontSize: 25
          ),)
        ],
      ),

    ),
  ),
),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Booking(type:"pathology"))
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.pattern_sharp,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('pathology',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
                    ),

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Booking(type:"ambulance"))
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.car_repair_outlined,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('Ambulance',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
                    ),

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Booking(type:"nursing"))
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.accessibility,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('Nursing Staff',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
                    ),

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Booking(type:"pharmacy"))
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.medical_information,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('Pharmacy',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
                    ),

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                      builder: (_) =>  Booking(type:"physiotherapist"))
                  );

                },
                child:   Padding(
                  padding: const EdgeInsets.all(15),
                  child:   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.accessible_outlined,size: 30,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text('Physiotherapist',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),)
                      ],
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
