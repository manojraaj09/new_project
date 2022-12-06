import 'dart:convert';
import 'dart:io';

import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../servise.dart';


class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {


  void initState() {
    // TODO: implement initState
    super.initState();
    getanswer();
  }

  final search=TextEditingController();

  Serves serves=Serves();
  List<dynamic> allans=[];
  getanswer() async{
    SharedPreferences prefs =await SharedPreferences.getInstance();
    final uri = Uri.parse(serves.url+"showreport.php");
    //print(uri);
    var response = await http.post(uri,body: {
      'showdata':prefs.getString('regid').toString(),

    });

    var state= json.decode(response.body);
    allans=[];
    setState(() {
      allans=state;
    });
    print(state);
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Download',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF4385f5),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: allans.map((row) {
            return      Container(
              height: 80,
              width: 400,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 10,

                  child: ListTile(
                    onTap: (){
                      print("${serves.url}image/${row['image']}");
                      FileDownloader.downloadFile(
                          url: "${serves.url}image/${row['image']}",
                          name: "PANDA",
                          onDownloadCompleted: (path) {
                            print(path);
                             final File file = File("/storage/emulated/0/Download");
                            //This will be the path of the downloaded file
                          });
                    },
                    leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
                    title: Text(
                        row['message'].toString(),
                        style: TextStyle(fontSize:16.0)
                    ),
                    trailing: Icon(Icons.download_for_offline,size: 30,color: Colors.blue,),

                  )
              ),
            );
          }).toList(),
        ),
      )),
    );
  }
}
