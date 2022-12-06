import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:photo_view/photo_view.dart';

import '../nurse/online_page.dart';
import '../servise.dart';
import 'doctorhomevisit.dart';

class HomeVisit extends StatefulWidget {
  const HomeVisit({Key? key}) : super(key: key);

  @override
  State<HomeVisit> createState() => _HomeVisitState();
}

class _HomeVisitState extends State<HomeVisit> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;

initState() {
  getmedia();
  super.initState();
}

  List carddata=[];

bool iscart=true;

  Serves serves=Serves();
List<bool> isshow=[];
  getmedia() async{

    final uri = Uri.parse(serves.url+"homeservise.php?home_service");


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


List  allcheckid=[];
  List  name=[];
  List  pic=[];



  @override
  Widget build(BuildContext context) {
    var m=-1;
    return iscart ? Center(child: CircularProgressIndicator()) : Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Visit',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          elevation: 0,


          backgroundColor: const Color(0xFF689df7),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'Choose Procedure',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
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

                              // print(allcheckid);
                              //    print(pic);
                              //    print(name);

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
                                   title: Image.asset('assets/images/iv.jpg'),
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

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xFF689df7),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                       getlist();
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
List alldata=[];
  void getlist() {
  for(int i=0;i<allcheckid.length;i++){

    var arr={
      "servicename":name[i],
      "image": pic[i],
      'id':allcheckid[i],
       'count':"Select",
    };
    alldata.add(arr);
  }

  //print(alldata);



  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) =>  DoctorHomeVisit(name: alldata,)));
  }

  }




