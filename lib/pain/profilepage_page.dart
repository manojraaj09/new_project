import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../login/home_page.dart';
import 'profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 //TextEditingController dateinput = TextEditingController();

  //text editing controller for text field

  // @override
  // void initState() {
  //   dateinput.text = ""; //set the initial value of text field
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/rafiki.png',
                        height: 200,
                        width: 200,
                      )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          //style: const TextStyle(height: 0.4),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: ('Name'),
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          // style: const TextStyle(height: 0.4),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: ('Age'),
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      )),
                  // Container(
                  //     padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  //     child: SizedBox(
                  //       height: 40,
                  //       child: TextField(
                  //        // style: const TextStyle(height: 0.4),
                  //         decoration: InputDecoration(
                  //           filled: true,
                  //           fillColor: Colors.white,
                  //           focusedBorder: OutlineInputBorder(
                  //               borderSide:
                  //                   const BorderSide(width: 1,color: Colors.grey),
                  //               borderRadius: BorderRadius.circular(20)),
                  //           enabledBorder: OutlineInputBorder(
                  //               borderSide:
                  //                   const BorderSide(width: 1, color: Colors.grey),
                  //               borderRadius: BorderRadius.circular(20)),
                  //           border: OutlineInputBorder(
                  //               borderSide:
                  //                   const BorderSide(width: 1, color: Colors.grey),
                  //               borderRadius: BorderRadius.circular(20)),
                  //           hintText: ('Password'),
                  //             hintStyle: TextStyle(fontSize: 13)
                  //         ),
                  //       ),
                  //     )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          //  style: const TextStyle(height: 0.4),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: ('Gender'),
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      )),
                  // Container(
                  //     padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  //     child: TextField(
                  //       style: const TextStyle(height: 0.4),
                  //       decoration: InputDecoration(
                  //         filled: true,
                  //         fillColor: Colors.white,
                  //         focusedBorder: OutlineInputBorder(
                  //             borderSide: const BorderSide(width: 3, color:Color(0xFFB2DFDB)),
                  //             borderRadius: BorderRadius.circular(20)),
                  //         enabledBorder: OutlineInputBorder(
                  //             borderSide: const BorderSide(width: 3, color:Color(0xFFB2DFDB)),
                  //             borderRadius: BorderRadius.circular(20)),
                  //         border: OutlineInputBorder(
                  //             borderSide: const BorderSide(width: 3, color:Color(0xFFB2DFDB)),
                  //             borderRadius: BorderRadius.circular(20)),
                  //         hintText: ('Gender'),
                  //       ),)),
                  // const SizedBox(
                  //   height: 20,
                  // ),

                  Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          // style: const TextStyle(height: 0.4),
                        //  controller: dateinput,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                const BorderSide(width: 1,color: Color(0xFF4385f5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Email-ID',
                            hintStyle: TextStyle(fontSize: 13),
                            //prefixIcon: const Icon(Icons.calendar_today),
                          ),
                          // readOnly: true,
                          // onTap: () async {
                          //   DateTime? pickedDate = await showDatePicker(
                          //       context: context,
                          //       initialDate: DateTime.now(),
                          //       firstDate: DateTime(2000),
                          //       lastDate: DateTime(2101));
                          //
                          //   if (pickedDate != null) {
                          //     print(pickedDate);
                          //     String formattedDate =
                          //     DateFormat('yyyy-MM-dd').format(pickedDate);
                          //     print(formattedDate);
                          //     setState(() {
                          //       dateinput.text = formattedDate;
                          //     });
                          //   } else {
                          //     print("Date is not selected");
                          //   }
                          // },
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          // style: const TextStyle(height: 0.4),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Color(0xFF4385f5)),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: ('Mobile Number'),
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      )),

                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFF689df7),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Profile()));
                      },
                      child: const Text(
                        'Update',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ]))));
  }
}
