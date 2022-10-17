import 'dart:convert';

import 'package:flutter/material.dart';

import '../servise.dart';
import '../testscreen/shopmedicine_page.dart';
import 'medical_page.dart';
import 'package:http/http.dart' as http;
class MedicalOrder extends StatefulWidget {
  const MedicalOrder({Key? key}) : super(key: key);

  @override
  State<MedicalOrder> createState() => _MedicalOrderState();
}

class _MedicalOrderState extends State<MedicalOrder> {


  List allarr=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

 getdata();

  }
  Serves serves=Serves();

  getdata() async{
    var url2 = Uri.parse(serves.url+"showmedical.php");
print(url2);
    var response = await http.post(url2, body:{
      "showdata":"medicinhome",
    },);
    var state=jsonDecode(response.body);
    print(state);
    setState(() {
      allarr=state;
      isshow=false;
    });

  }
  bool isshow=true;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Medicine',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading:false,
        leading: GestureDetector(
          onTap: (){ Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Medical()));},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: const Color(0xFF689df7),

      ),
      body:isshow?Center(child: CircularProgressIndicator()): SingleChildScrollView(
        child: Column(
          children: allarr.map((row){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFd9e6fd),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.network("${serves.url}image/${row['Photo']}"),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            row['Clinic'].toString(),
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            row['name'].toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            row['Address'].toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '7:00 Am to 10:Pm ',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Availability:Yes',
                            style: TextStyle(
                              color: Colors.black, ),
                          ),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          // const Text(
                          //   'Home Delivery Available',
                          //   style: TextStyle(
                          //       color: Colors.black, fontWeight: FontWeight.bold),
                          // ),

                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>  CardPicture(drid:row['id'],mobile:row['mobile'],type:'medicinhome')));
                            },
                            child: Container(
                              width: 100,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF4385f5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
