import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../download/final_page.dart';
import '../servise.dart';
import 'ambulance_page.dart';


class Basic extends StatefulWidget {
  const Basic ({Key? key, required this.type}) : super(key: key);
final type;
  @override
  State<Basic> createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  bool valuefifth = false;

  initState() {
    getmedia();
    super.initState();
  }

  List carddata=[];

  bool iscart=true;

  Serves serves=Serves();
  List<bool> isshow=[];
  getmedia() async{

    final uri = Uri.parse(serves.url+"hometest.php?type=${widget.type}");
    var response = await http.get(uri);
    var state= json.decode(response.body);
    // print(state);
    carddata=[];
    int count=0;
    state.forEach((row) async{

      var amar={
        "servicename":row['servicename'],
        "image": row['image'],
        'id':row['id'],
        'count':    count,
      };
      isshow.add(false);
      carddata.add(amar);
      count++;
    });
    setState((){
      iscart=false;
    });
  }


  final destination= TextEditingController();
  final distance= TextEditingController();

  List  allcheckid=[];
  List  name=[];
  List  pic=[];



  @override
  Widget build(BuildContext context) {
    var m  = -1;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ambulance',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Ambulance()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: const Color(0xFF689df7),
      ),
      body:iscart?Center(child: CircularProgressIndicator()) : SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:const  EdgeInsets.only(top: 20,),
                child: const Text(
                  'Select Facilities',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Column(
                children: carddata.map((emt) {
                  m++;
                  // ischeck[m]=ischeck[m];


                  return  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: Colors.blue,
                          activeColor: Colors.black,
                          value: isshow[emt['count']],
                          onChanged: (bool? value) {
                            setState(() {

                              if(isshow[emt['count']]==true){
                                isshow[emt['count']]=false;


                                name.remove(emt['servicename']);
                                pic.remove(emt['image']);
                                allcheckid.remove(emt['id']);
                              }else{
                                isshow[emt['count']]=true;
                                name.add(emt['servicename']);
                                pic.add("${serves.url}/image/${emt['image']}");
                                allcheckid.add(emt['id']);
                              }

                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Image.network("${serves.url}/image/${emt['image']}"),
                                ));
                          },
                          child:  CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage("${serves.url}/image/${emt['image']}"),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          emt['servicename'].toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Provide Destination',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 25,),
                    SizedBox(
                      height: 40,
                      width: 180,
                      child: TextField(
                        controller: destination,
                        // keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: ('Destination'),
                            hintStyle: TextStyle(fontSize: 13)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Approx Distance (Up & Down)',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: TextField(
                        controller: distance,
                        // keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,  color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: ('Approx Distance(Up & Down)'),
                            hintStyle: TextStyle(fontSize: 13)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    getlist();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) =>  Final(data: [],)));
                  },
                  child: const Text(
                    'Continue',
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


  List alldata=[];
  void getlist() {
    for(int i=0;i<allcheckid.length;i++){

      var arr= {
        "distance": distance.text,
        "destination": destination.text,
        'id': allcheckid[i],

      };
      alldata.add(arr);
    }

    //print(alldata);



    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>  Final(data: alldata,)));
  }
}
