import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF4385f5),
          automaticallyImplyLeading: true,
          title: const Text(
            'Pathology Center',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                     color: Color(0xFFeee9e9),

                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/store.jpg'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'APF Pathology',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            'DR. OP Kashyap',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Rohini West, Sector-5 Near Dr.BSA hospital',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            'Availability:Yes/No',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            '10:00 Am - 5:30',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            'Total Price - ₹1000',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFeee9e9),

                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/download.png'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Opolis Diagnostics',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            'DR. OP Kashyap',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Sector 32 C Chandigarh',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            'Availability:Yes/No',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            '10:00 Am - 5:30',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            'Total Price - ₹6500',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                     color: Color(0xFFeee9e9),

                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.teal,
                      child: Image.asset('assets/images/store.jpg'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'APF Pathology',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            'DR. OP Kashyap',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Rohini West, Sector-5 ',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            'Availability:Yes/No',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            '10:00 Am - 5:30',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            'Total Price - ₹4500',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                //padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFF689df7),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => const StorePage()));
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
