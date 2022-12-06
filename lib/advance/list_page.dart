import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../nurse/online_page.dart';
import '../pain/physician_page.dart';
import '../servise.dart';


class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  void initState() {
    // TODO: implement initState
    super.initState();

    getanswer();
  }

  final search=TextEditingController();


  Serves serves=Serves();
  List<dynamic> allans=[];
  getanswer() async{

    final uri = Uri.parse(serves.url+"category.php");
    print(uri);
    var response = await http.post(uri,body: {
      'showdata':search.text.toString(),


    });

    var state= json.decode(response.body);
  //  print(state);
    allans=[];
    setState(() {
      allans=state;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Choose Specialist',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){ Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Online()));},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: allans.map((item) {
            return Container(
              child: Column(
                children: [

                  const Divider(
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => PhysicianPage(drid:item['menu_id'].toString())),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children:  [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('${serves.url}image/${item['menu_image']}'),
                          ),
                          SizedBox(width: 50,),
                          Text(item['menu'].toString(),style: TextStyle(color: Colors.black),),
                          SizedBox(width: 90,),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                    height: 20,
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
