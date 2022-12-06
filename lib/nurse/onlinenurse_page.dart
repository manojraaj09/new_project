import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practo/successful.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../sample/review_page.dart';
import '../servise.dart';
import 'nursecare_page.dart';

class OnlineNurse extends StatefulWidget {
  const OnlineNurse({Key? key, required List this.search}) : super(key: key);
final List search;

  @override
  State<OnlineNurse> createState() => _OnlineNurseState();
}

class _OnlineNurseState extends State<OnlineNurse> {



  List allarr=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1), () => getdata());

  }
  Serves serves=Serves();

  getdata() async{

    var url2 = Uri.parse(serves.url+"fechservice.php");
    print(widget.search);
    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.search),


    },);
    var state=jsonDecode(response.body);
    print(state);
    setState(() {
      allarr=state;
      isshow=false;
    });

  }
  bool isshow=true;
  void bookdata(drid) async{
    SharedPreferences prefs =await SharedPreferences.getInstance();

    var url2 = Uri.parse(serves.url+"bookhome.php");
    print(widget.search);
    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.search),
      "drid":drid.toString(),
      "userid":prefs.getString("regid").toString(),
      "type":"nursing",
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
          'Nursing Staff',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: const Color(0xFF689df7),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child:   Column(children:allarr.map((row) {
          return   Padding(
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
                      child:  CircleAvatar(
                        radius: 50,
                        backgroundImage:
                        NetworkImage("${serves.url}image/${row['photo']}"),
                      )),

                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          row['name'].toString(),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          row['specialist'].toString(),
                          style: TextStyle(color: Colors.black),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        row['experience']==null?Container() :  Text(
                          "${row['experience']} Years experience",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        row['locality'] ==null?Container() :  Text(
                          row['locality'].toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),




                        Text(
                          "Visit fee-${row['visiteFee']} Rs",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Procedure fee -${row['serviceFee']} Rs",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Total Fee:${num.parse(row['visiteFee'].toString())+num.parse(row['serviceFee'].toString())} Rs",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              updateOnDrag:false,
                              tapOnlyMode :false,
                              ignoreGestures : false,
                              initialRating: double.parse(row['rating']),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal:1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,

                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            TextButton(onPressed: (){
                              Navigator.push(
                                context,MaterialPageRoute(builder: (context)=> ReviewRating(drid: row['reg_id'].toString(),)),
                              );
                            }, child: Text('View',style: TextStyle(color: Colors.red),)),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            bookdata(row['reg_id']);
                          },
                          child: Container(
                            width: 100,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Color(0xFF4385f5),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'Book Now',
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
        }).toList()
          ,),
      )),
    );
  }
}
