import 'package:flutter/material.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4385f5),
        automaticallyImplyLeading: true,
        elevation: 0,
        title: const Text(
          'Money',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 130,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 15,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10),
                          child: Container(
                              // // padding: EdgeInsets.all(20),
                              //  height: 200,
                              //  width: 400,
                              //  decoration: BoxDecoration(
                              //  color: Color(0xFFb3cefb),
                              //  borderRadius: BorderRadius.circular(20)),
                              ),
                        ),
                        Container(
                          child: const Text(
                            'Be-Secure',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: const Text(
                            'Balance',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: const Text(
                            '₹ 20000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'All Transaction',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.all(20),
                child: Table(
                    //defaultColumnWidth: const FixedColumnWidth(110.0),
                    border: TableBorder.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text('Services', style: TextStyle(fontWeight: FontWeight.bold,fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('Date', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9.0))
                        ]),
                        Column(children: const [
                          Text('Time', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9.0))
                        ]),
                        Column(children: const [
                          Text('Amount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9.0))
                        ]),
                        Column(children: const [
                          Text('Transaction Id', style: TextStyle(fontWeight: FontWeight.bold,fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('Process', style: TextStyle(fontWeight: FontWeight.bold,fontSize:9.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text('A Service', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('07/02/2022', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('10:00 AM', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('1050', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('112', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children:  [
                         // Text('Process', style: TextStyle(fontSize: 20.0))
                          Image.asset('assets/images/failed.png',height: 15,width: 15,)
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text('B Service', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('10/04/2022', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('08:00 AM', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('5000', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('112', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children:  [
                          // Text('Process', style: TextStyle(fontSize: 20.0))
                          Image.asset('assets/images/right.jpg',height: 15,width: 15,)
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text('C Service', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('07/02/2022', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('10:00 PM', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('1050', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children: const [
                          Text('112', style: TextStyle(fontSize:9.0))
                        ]),
                        Column(children:  [
                          Image.asset('assets/images/pending.png',height:15,width: 15,)
                        ]),
                      ]),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
