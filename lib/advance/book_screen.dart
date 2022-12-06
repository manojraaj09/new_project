import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practo/sample/sample_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../sample/review_page.dart';
import '../servise.dart';
import '../successful.dart';
import '../testscreen/store_page.dart';


class BookPage extends StatefulWidget {
   BookPage({Key? key, required List this.data}) : super(key: key);
final List data;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {






  List allarr=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1), () => getdata());

  }
  Serves serves=Serves();

  bool isshow=true;
  getdata() async{

    var url2 = Uri.parse(serves.url+"fetchppathology.php");
print(url2);
    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.data),


    },);
    var state=jsonDecode(response.body);
    print(state);
    setState(() {
      allarr=state;
      isshow=false;
    });

  }

  void bookdata(drid) async{
    SharedPreferences prefs =await SharedPreferences.getInstance();

    var url2 = Uri.parse(serves.url+"bookpathology.php");

    var response = await http.post(url2, body:{
      "data":jsonEncode(widget.data),
      "drid":drid.toString(),
      "userid":prefs.getString("regid").toString(),
      "type":"pathology",
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
        elevation: 0,

        backgroundColor: Colors.blue,
        title: isshow?Text(
          'Book A Test',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ):Text(
          'Pathalogy Centre',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        actions: const [
          Icon(
            Icons.shopping_cart_checkout_sharp,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body:isshow? Center(child: CircularProgressIndicator()):allarr.length==0 ? Container(child: Text('data not found'),):  SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: ('Search with test name or code'),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    prefixIcon: const Icon(
                      Icons.filter_alt,
                      size: 30,
                    )),
              ),
            ),
          ),
        const SizedBox(height:10,),
        const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(children:allarr.map((row) {
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
                            "Total Fee:${(int. parse(row['visiteFee'].toString())+int.parse(row['serviceFee'].toString()))} Rs",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          // Row(
                          //   children: [
                          //     RatingBar.builder(
                          //       updateOnDrag:false,
                          //       tapOnlyMode :false,
                          //       ignoreGestures : false,
                          //       initialRating: double.parse(row['rating']),
                          //       minRating: 1,
                          //       direction: Axis.horizontal,
                          //       allowHalfRating: true,
                          //       itemCount: 5,
                          //       itemSize: 20,
                          //       itemPadding: EdgeInsets.symmetric(horizontal:1.0),
                          //       itemBuilder: (context, _) => Icon(
                          //         Icons.star,
                          //         color: Colors.amber,
                          //
                          //       ),
                          //       onRatingUpdate: (rating) {
                          //         print(rating);
                          //       },
                          //     ),
                          //     TextButton(onPressed: (){
                          //       Navigator.push(
                          //         context,MaterialPageRoute(builder: (context)=> ReviewRating(drid: row['reg_id'].toString(),)),
                          //       );
                          //     }, child: Text('View',style: TextStyle(color: Colors.red),)),
                          //   ],
                          // ),
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
                                  'Confirm',
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
        ],
      )),
    );
  }
}
