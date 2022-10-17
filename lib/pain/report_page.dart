import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Report',
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
    children: [
    Container(
      height: 80,
      width: 400,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 10,
        child: Column(
          children:const [
            ListTile(
              leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
              title: Text(
                  'CT Scan',
                  style: TextStyle(fontSize:16.0)
              ),

            )
          ],
        )
      ),
    ),
      Container(
        height: 80,
        width: 400,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children:const [
                ListTile(
                  leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
                  title: Text(
                      'MRI Scan',
                      style: TextStyle(fontSize:16.0)
                  ),

                )
              ],
            )
        ),
      ),
      Container(
        height: 80,
        width: 400,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children:const [
                ListTile(
                  leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
                  title: Text(
                      'Urine Scan',
                      style: TextStyle(fontSize:16.0)
                  ),

                )
              ],
            )
        ),
      ),
      Container(
        height: 80,
        width: 400,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children:const [
                ListTile(
                  leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
                  title: Text(
                      'Full Body Checkup',
                      style: TextStyle(fontSize:16.0)
                  ),

                )
              ],
            )
        ),
      ),
      Container(
        height: 80,
        width: 400,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children:const [
                ListTile(
                  leading: Icon(Icons.picture_as_pdf_rounded, size: 30,color: Colors.red,),
                  title: Text(
                      'X-ray Scan',
                      style: TextStyle(fontSize:16.0)
                  ),

                )
              ],
            )
        ),
      )
    ],
    ),
    )),
    );
  }
}
