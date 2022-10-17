import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../advance/book_screen.dart';

import '../advance/chooseday_page.dart';
import '../servise.dart';

class selectdate extends StatefulWidget {
  const selectdate({Key? key, required String this.type}) : super(key: key);
  final type;
  @override
  State<selectdate> createState() => _selectdateState();
}

class _selectdateState extends State<selectdate> {
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
        "dis": row['description'],
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



                                  allcheckid.remove(emt['id']);
                                }else{
                                  isshow[emt['count']]=true;




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
                          Column(
                            children: [
                              Text(
                                emt['servicename'].toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width:200,
                                child: Text(
                                  emt['dis'].toString(),

                                  style: TextStyle(color: Colors.black,fontSize: 8),
                                ),
                              ),
                            ],
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
                    child: TextButton(
                      onPressed: () {
                        _showMyDialog();
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

      var arr= {

        'id': allcheckid[i],
        'day': days.text,
      };
      alldata.add(arr);
    }
    //
    // //print(alldata);


    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>  ChooseDay(data:alldata)));
  }

  final days =TextEditingController();

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose Days"),
          content: Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  controller: days,
                  keyboardType: TextInputType.number,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF4385f5)),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: ('Enter Number of Days'),
                      hintStyle: TextStyle(fontSize: 13)),
                ),
              )),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    getlist();

                  },
                  child: const Text(
                    'Proceed',
                    style:
                    TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }





}




