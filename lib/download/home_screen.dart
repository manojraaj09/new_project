import 'package:flutter/material.dart';
import 'package:practo/Nurse/nurse_page.dart';
import 'package:practo/sample/sample_page.dart';

import '../advance/ambulance_page.dart';
import '../advance/contactus_page.dart';
import '../login/medical_page.dart';
import '../nurse/online_page.dart';
import '../pain/physiotherapy_page.dart';
import '../pain/profile_page.dart';
import '../testscreen/tutorail_page.dart';
import 'download_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        backgroundColor: const Color(0xFF4385f5),
        actions: const [
          Icon(
            Icons.shopping_cart_checkout_sharp,
            color: Colors.white,
            size: 30,
          )
        ],
        // leading: GestureDetector(
        //   onTap: (){
        //
        //
        //   },
        //   child: const Icon(
        //     Icons.menu,
        //     size: 30,
        //     color: Color(0xFF344543),
        //   ),
        // ),
        title: Container(
            width: double.infinity,
            height: 40,
            color: const Color(0xFF4385f5),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                ),
              ),
            )),
        // automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "ABC",
                  style: TextStyle(color: Color(0xFF689df7)),
                ),
                accountEmail: Text(
                  "abc977@gmail.com",
                  style: TextStyle(color: Color(0xFF689df7)),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/boy.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Color(0xFF689df7),
              ),
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: Color(0xFF689df7),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Profile()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.play_arrow,
                color: Color(0xFF689df7),
              ),
              title: const Text(
                "Tutorial Videos",
                style: TextStyle(
                  color: Color(0xFF689df7),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VideoTutorial()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_page,
                color: Color(0xFF689df7),
              ),
              title: const Text(
                "Contact Us",
                style: TextStyle(
                  color: Color(0xFF689df7),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ContactUs()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.report,
                color: Color(0xFF689df7),
              ),
              title: const Text(
                "Download Rx & Report",
                style: TextStyle(
                  color: Color(0xFF689df7),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Download()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.download_outlined,
                color: Color(0xFF689df7),
              ),
              title: const Text(
                "Service Provider app",
                style: TextStyle(
                  color: Color(0xFF689df7),
                ),
              ),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const Download()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFeee9e9),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  // color: Color(0xFFeee9e9),

                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/images/top.png')),
        ),

        // SizedBox(
        //   height: 200,
        //   width: double.infinity,
        //   child: CarouselSlider(
        //     items: [
        //       // Container(
        //       //   padding: const EdgeInsets.only(top: 5),
        //       //   decoration: BoxDecoration(
        //       //       borderRadius: BorderRadius.circular(20),
        //       //       image: const DecorationImage(
        //       //           image: AssetImage('assets/images/kkk.jpg'))),
        //       // ),
        //       Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20),
        //             image: const DecorationImage(
        //                 image: AssetImage('assets/images/ban.jpg'))),
        //       ),
        //       Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20),
        //             image: const DecorationImage(
        //                 image: AssetImage('assets/images/advance.jpg'))),
        //       ),
        //       // Container(
        //       //   decoration: BoxDecoration(
        //       //       borderRadius: BorderRadius.circular(20),
        //       //       image: const DecorationImage(
        //       //           image: AssetImage('assets/images/path.jpg'))),
        //       // ),
        //       Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20),
        //             image: const DecorationImage(
        //                 image: AssetImage('assets/images/modern.jpg'))),
        //       ),
        //     ],
        //     options: CarouselOptions(
        //       height: 180.0,
        //       enlargeCenterPage: true,
        //       autoPlay: true,
        //       aspectRatio: 16 / 9,
        //       autoPlayCurve: Curves.fastOutSlowIn,
        //       enableInfiniteScroll: true,
        //       autoPlayAnimationDuration: const Duration(milliseconds: 500),
        //       viewportFraction: 0.7,
        //     ),
        //   ),
        // ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Sample()));
                },
                child: Container(
                  // padding: const EdgeInsets.only(left: 20, top: 60),
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/a.jpg'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Online()));
                },
                child: Container(
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/rename.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Text(
              '                   Pathology',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 90,
            ),
            Text(
              'Book Doctor',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Ambulance()));
                },
                child: Container(
                  // padding: const EdgeInsets.only(left: 20, top: 60),
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/Ambulance.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Nurse()));
                },
                child: Container(
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/Nurse.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Text(
              '                   Ambulance',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 90,
            ),
            Text(
              'Nursing Staff',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),

        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Medical()));
                },
                child: Container(
                  // padding: const EdgeInsets.only(left: 20, top: 60),
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/Chemist.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const PhysiotherapyPage()));
                },
                child: Container(
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/hi.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Text(
              '                   Pharmacy',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 90,
            ),
            Text(
              'Physiotherapist',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 370,
            decoration: BoxDecoration(
                color: const Color(0xFF689df7),
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'Common Disease',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/all.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/cold.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/dia.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/head.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/cold.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/all.jpg'),
                radius: 40,
                backgroundColor: Colors.blue[800],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(children: const [
          Text(
            '     Allergy',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '  Cold and Flu',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '   Diarrhea',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '    Headache',
            style: TextStyle(color: Colors.black),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/images/home.png')),
        ),
      ]),
    );
  }
}
