import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practo/successful.dart';

import '../advance/ambulance_page.dart';
import '../servise.dart';


class Final extends StatefulWidget {
  const Final({Key? key, required List this.data}) : super(key: key);
final List data;

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {


  List allarr=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

getdata();

  }
  Serves serves=Serves();

  getdata() async{

    var url2 = Uri.parse(serves.url+"fetchambulance.php");
    // print(url2);
     print(widget.data);
    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.data),


    },);
    var state=jsonDecode(response.body);
    print(state);
    setState(() {
      allarr=state;
    });

  }

  void bookdata(drid) async{
    SharedPreferences prefs =await SharedPreferences.getInstance();

    var url2 = Uri.parse(serves.url+"bookambulance.php");

    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.data),
      "drid":drid.toString(),
      "userid":prefs.getString("regid").toString(),
      "type":"ambulance",
    },);
    if(response.statusCode==200) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => const Successfull()));
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ambulance',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: const Color(0xFF689df7),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: allarr.map((row) {
            return Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.network("${serves.url}image/${row['photo']}")),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children:  [
                      Text(
                        'Service Provider Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        row['name'].toString(),
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children:  [
                      Text(
                        'Ambulance Number',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      row['Clinic_number']==null ?Container(): Text(
                        row['Clinic_number'].toString(),
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),


                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children:  [
                      Text(
                        'Cost Rs/km',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      row['Consultation']==null?Container():  Text(
                        row['Consultation'].toString(),
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),

                 SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: const [
                      Text(
                        'Availability',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        '                           Yes',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text('Source',  style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                      SizedBox(width: 40,),
                      Text('To', style: TextStyle(color: Colors.black, fontSize: 16),),
                      SizedBox(width: 40,),
                      Text('Destination',  style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children:  [
                      Text(
                        'Total Journey',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "  ${widget.data[0]['distance']} Km",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xFFd9e6fd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children:  [
                      Text(
                        'Total Cost: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          (int.parse(widget.data[0]['distance'].toString())*int.parse(row['visiteFee'].toString())).toString(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xFF689df7),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        bookdata(row['reg_id']);
                      },
                      child: const Text(
                        'Pay',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        )
      )),
    );
  }
}
