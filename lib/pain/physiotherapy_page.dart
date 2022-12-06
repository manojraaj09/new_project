import 'package:flutter/material.dart';

import '../advance/chooseday_page.dart';
import '../download/home_screen.dart';


class PhysiotherapyPage extends StatelessWidget {
  const PhysiotherapyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Physiotherapy',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: Color(0xFF689df7),
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/Secure.png'),
              ),
              ElevatedButton(

                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Choose Days"),
                      content: Container(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
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
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFF689df7),
                                borderRadius: BorderRadius.circular(20)),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const ChooseDay()));
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
                    ),
                  );
                },
                child: const Text(
                  "Home Visit",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Choose Days"),
                      content: Container(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
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
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFF689df7),
                                borderRadius: BorderRadius.circular(20)),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const ChooseDay()));
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
                    ),
                  );
                },
                child: const Text(
                  "At Physiotherapy Center",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
