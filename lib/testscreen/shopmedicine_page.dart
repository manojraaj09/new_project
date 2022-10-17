import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:practo/successful.dart';
import 'package:http/http.dart' as http;
import '../login/medicalstore_page.dart';
import '../servise.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loading_progress/loading_progress.dart';

class CardPicture extends StatefulWidget {
  const CardPicture({Key? key, required this.drid, required this.mobile, required this.type}) : super(key: key);
final drid, mobile,type;
  @override
  State<CardPicture> createState() => _CardPictureState();
}

class _CardPictureState extends State<CardPicture> {

  File? image;
  final picker = ImagePicker();
  Serves serves=Serves();
  Future choiceImage()async{
    print(widget.type);
    var pickedImage = await picker.getImage(
      source: ImageSource.gallery,
      maxHeight: 1800,
      maxWidth: 1800,
      imageQuality: 20,
    );
    setState(() {
      image = File(pickedImage!.path);
      print('123456   $image');
      netimage=false;
    });
  }
  bool netimage=false;

  Future choiceImage1()async {
    var pickedImage = await picker.getImage(
      source: ImageSource.camera,
      maxHeight: 1800,
      maxWidth: 1800,
      imageQuality: 20,
    );
    setState(() {
      image = File(pickedImage!.path);
      print('123456   $image');
      netimage = false;
    });
  }
    final medicine = TextEditingController();

    Savedata() async {
      LoadingProgress.start(context);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var cid = prefs.getString('regid');
      final uri = Uri.parse(serves.url + "savemedical.php");
      var request = http.MultipartRequest('POST', uri);
      request.fields['cid'] = cid.toString();
      request.fields['medicine'] = medicine.text;
     request.fields['drid'] = widget.drid.toString();
       request.fields['type'] = widget.type.toString();

      if (image == null) {} else {
        var images = await http.MultipartFile.fromPath(
            "image", image!.path.toString());

        request.files.add(images);
      }
      var response = await request.send();
      var response1 = await http.Response.fromStream(response);
      if (response.statusCode == 200) {
        print('Image Uploded ${response1.body}');
        LoadingProgress.stop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const Successfull()));
        // Navigator.pop(context, 'OK');
      } else {

      }
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Medicine',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: const Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: ()async{
                     //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(widget.mobile);

                  },
                  backgroundColor: Colors.green,
                  child:const Icon(Icons.call,),
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.fromLTRB(30, 0,30, 0),
              child: TextFormField(
                controller: medicine,
                maxLines: 30,
                minLines: 1,
                keyboardType: TextInputType.multiline,
                decoration:const InputDecoration(
                  hintText: 'Enter Medicine Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),

              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                'Or',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: InkWell(
                onTap: (){
                  choiceImage1();
                },
                child: DottedBorder(
                    dashPattern: [4, 2],
                    strokeWidth: 1,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
                      height: 120,
                      width: 290,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.camera_alt_rounded,
                            size: 50,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                choiceImage();
              },
              child: DottedBorder(
                  dashPattern: [4, 2],
                  strokeWidth: 1,
                  child: Container(
                    height: 40,
                    width: 290,
                    //color: Colors.grey[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                            size: 30,
                          ),

                        ],
                      ),
                    ),
                  ),
            ),
            const SizedBox(height:50,),


            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            //   child: Row(
            //     children: [
                  // InkWell(
                  //   onTap: (){},
                  //   child: Container(
                  //     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //     height: 30,
                  //     width: 130,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFFd9e6fd),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Row(
                  //       children:const [
                  //          Icon(
                  //           Icons.currency_rupee,
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           'Pay Online',
                  //           style: TextStyle(color: Colors.blueAccent, fontSize: 16,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 40,
                  // ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //     height: 40,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFFd9e6fd),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.call,
                  //           color: Colors.green,
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           '   Call',
                  //           style: TextStyle(
                  //               color: Colors.blueAccent,
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFF689df7),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {

                  Savedata();
                },
                child: const Text(
                  'Pay Online',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
