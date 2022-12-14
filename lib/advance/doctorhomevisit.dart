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
  List alldata=[];

  List search=[];
  Serves serves=Serves();

  getval(){

    search=[];
    for(int i=0;i<alldata.length;i++) {
      var arr = {
        "sid": alldata[i]['id'].toString(),
        "day": myCategoryDynamic[i].toString(),
      };


      search.add(arr);
    }

   // print(search);


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

  final Map myCategoryDynamic = {};

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
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(alldata[index]['image']),
                          ),

title: Text(alldata[index]['servicename']),
                          trailing: SizedBox(
                            width: 100,
                              child:DropdownButtonFormField(
                                hint: Text('Day'),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder( //<-- SEE HERE
                                    borderSide: BorderSide(color: Colors.black, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder( //<-- SEE HERE
                                    borderSide: BorderSide(color: Colors.black, width: 1),
                                  ),

                                  fillColor: Colors.white,
                                ),
                                dropdownColor: Colors.white,
                                value: myCategoryDynamic[index],
                                onChanged: ( newValue) {
                                  setState(() {
                                    myCategoryDynamic[index] = newValue!;
                                    print(myCategoryDynamic[index]);
                                  });
                                },
                                items: <String>['1', '2', '3', '4','5','6','7','8','9','10'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  );
                                }).toList(),
                              ),
                          ),

                        ),
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
              child: TextButton(
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
