import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../servise.dart';
class Booking extends StatefulWidget {
  const Booking({Key? key,required this.type}) : super(key: key);
final type;
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  List pandind=[];
  List complete=[];
  List cancel=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  Serves serves=Serves();
String? name;
  getdata() async{
 //   print('getdata');
    SharedPreferences prefs =await SharedPreferences.getInstance();
var cid=prefs.getString('regid').toString();
name =prefs.getString('name').toString();
    var url2 = Uri.parse(serves.url+"mybook.php?type=${widget.type}&reg_id=$cid");
  print(url2);
    var response = await http.get(url2);
    var state=jsonDecode(response.body);

    setState(() {

      state.forEach((row){
        // var arr={
        //   "serviceday":row['bookingInfo']['serviceday'],
        //   "servicename":row['bookingInfo']['servicename'],
        //   "serviceprice":row['bookingInfo']['serviceprice'],
        //   "description":row['bookingInfo']['description'],
        //   "image":row['bookingInfo']['image'],
        //   "type":row['bookingInfo']['type'],
        //
        // };

        var arr ={
          "servicename":row['servicename'],
          "orderNo":row['orderNo'],
          "status":row['status'],
          "bookingDate":row['bookingDate'],

          "destination":row['destination'],
          "serviceProviderName":row['serviceProviderName'],
          "serviceProviderMobileNo":row['serviceProviderMobileNo'],
          "state":row['state'],

          "district":row['district'],
          "consultationFee":row['consultationFee'],
          "degree":row['degree'],
          "photo":row['photo'],
          "TotalAmount":row['TotalAmount'],
          "type":row['type'],
          "bookingInfo":row['bookingInfo'],
        };



        if(row['status']=='Pending'){
          pandind.add(arr);
        }else if(row['status']=='Completed'){
          complete.add(arr);

        }else if(row['status']=='Cancel'){
          cancel.add(arr);

        }


      });
      print(pandind);
setState(() {
  bool isshow=true;
});

    });

  }
  bool isshow=true;




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF4385f5),

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
            ListView.builder(
                itemCount: pandind.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:  ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage("${serves.url}image/${pandind[index]['photo']}")),
                        title: Text(
                          'Service Booked $name\nService Given By- ${pandind[index]['serviceProviderName']}\nService-name-\n ${pandind[index]['bookingInfo']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            '${pandind[index]['district']},${pandind[index]['serviceProviderMobileNo']},\nOnline Payment\nTotal payment-${pandind[index]['TotalAmount']}',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: complete.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:  ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                            NetworkImage("${serves.url}image/${complete[index]['photo']}")),
                        title: Text(
                          'Service Booked $name\nService Given By- ${complete[index]['serviceProviderName']}\nService-name-\n ${complete[index]['bookingInfo']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${complete[index]['district']},${complete[index]['serviceProviderMobileNo']},\nOnline Payment\nTotal payment-${complete[index]['TotalAmount']}',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: cancel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:  ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                            NetworkImage("${serves.url}image/${cancel[index]['photo']}")),
                        title: Text(
                          'Service Booked $name\nService Given By- ${cancel[index]['serviceProviderName']}\nService-name-\n ${cancel[index]['bookingInfo']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${cancel[index]['district']},${cancel[index]['serviceProviderMobileNo']},\nOnline Payment\nTotal payment-${cancel[index]['TotalAmount']}',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  );
                }),
          ])),
    );
  }
}
