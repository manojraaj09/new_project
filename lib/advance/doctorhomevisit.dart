import 'package:flutter/material.dart';
import 'package:practo/doctorhome.dart';

import '../servise.dart';
import 'doctorhome_page.dart';



class DoctorHomeVisit extends StatefulWidget {
   DoctorHomeVisit({Key? key, required List this.name}) : super(key: key);
final List name;
  @override
  State<DoctorHomeVisit> createState() => _DoctorHomeVisitState();
}

class _DoctorHomeVisitState extends State<DoctorHomeVisit> {
  String dropdownvalue = '1';

  // List of items in our dropdown menu
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  List<TextEditingController> controller = [];
  List<dynamic> alldata=[];

  List search=[];
  Serves serves=Serves();

  getval(){

    search=[];
    for(int i=0;i<alldata.length;i++) {
      var arr = {
        "sid": alldata[i]['id'],
        "day": controller[i].text,
      };

      search.add(arr);
    }

    print(search);


    Navigator.push(context,
        MaterialPageRoute(builder: (_) =>  DoctorHome(search:search)));

  }








  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    //getval();
setState((){
  alldata=widget.name;
});
print(alldata);
  }

  List amar=[];


  @override
  Widget build(BuildContext context) {
    int m=0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Visit',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),

        backgroundColor: const Color(0xFF689df7),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                'CHOOSE PROCEDURES DAY OR NUMBER',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: ListView.builder(
                    itemCount: alldata.length,
                    itemBuilder: (BuildContext context, int index) {
                      controller.add(new TextEditingController());
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(alldata[index]['image']),
                        ),

title: Text(alldata[index]['servicename']),
                        trailing: SizedBox(
                          width: 60,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: controller[index],
                            )),

                      );
                    }),


      ),
            ),

            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFF689df7),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  getval();
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
    );
  }
}
