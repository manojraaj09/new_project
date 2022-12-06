import 'package:flutter/material.dart';

import 'package:practo/sample/sample_page.dart';

import '../testscreen/store_page.dart';


class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Book A Test',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () { Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Sample()));},
          child: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_checkout_sharp,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: ('Search with test name or code'),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    prefixIcon: const Icon(
                      Icons.filter_alt,
                      size: 30,
                    )),
              ),
            ),
          ),
        const SizedBox(height:10,),
        const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 40,top: 10),
            child: Row(
              children: const[
                Icon(Icons.bloodtype,color: Colors.red,size: 30,),
                Text(
                  ' Complete Blood Count:CBC (2022)',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ],
            )


            ),


          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.black,
                ),
                Text(
                  '     No special preparation required',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                Text(
                  '     26 Parameter(s) covered',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.notes,
                  color: Colors.black,
                ),
                Text(
                  '     Daily',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: Color(0xFF689df7),
              borderRadius: BorderRadius.circular(20)),
          child: FlatButton(
            onPressed: () {},
            child: const Text(
              'ADD TO CART',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
          const SizedBox(height:10,),
          const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/kedney.jpg',height: 30,width: 30,),
                  const Text(
                    '  KIDNEY PANEL; KFT',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ],
              )


          ),


          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.black,
                ),
                Text(
                  '     No special preparation required',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                Text(
                  '     26 Parameter(s) covered',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.notes,
                  color: Colors.black,
                ),
                Text(
                  '     Daily',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xFF689df7),
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height:10,),
          const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/kedney.jpg',height: 30,width: 30,),
                  const Text(
                    '   LIVER & KIDNEY PANEL',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ],
              )


          ),


          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.black,
                ),
                Text(
                  '     No special preparation required',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                Text(
                  '     26 Parameter(s) covered',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.notes,
                  color: Colors.black,
                ),
                Text(
                  '     Daily',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xFF689df7),
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height:10,),
          const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/glucose.jpg',height: 30,width: 30,),
                  const Text(
                    '  Hba1c; Glyucosylated',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ],
              )


          ),


          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.black,
                ),
                Text(
                  '     No special preparation required',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                Text(
                  '    2 parameter(s) covered',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.notes,
                  color: Colors.black,
                ),
                Text(
                  '     Daily',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xFF689df7),
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height:10,),
          const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/glucose.jpg',height: 30,width: 30,),
                  const Text(
                    '  Glucose,Fasting(F)',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ],
              )


          ),


          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.black,
                ),
                Text(
                  '     Minimum 8 hour',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                Text(
                  '     1 parameter(s) covered',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.notes,
                  color: Colors.black,
                ),
                Text(
                  '     Daily',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xFF689df7),
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height:10,),
          const   Divider(
            thickness:1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
            height:10,
          ),

          const SizedBox(
            height: 20,
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const StorePage()));
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
