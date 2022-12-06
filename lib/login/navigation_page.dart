import 'package:flutter/material.dart';

import '../advance/wallet_page.dart';
import '../download/home_screen.dart';
import 'chat_page.dart';
import 'search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MoneyPage(),
    Booking(),
    NotificationPage(),
    // HelpCenter(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Color(0xFF4385f5),

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.home,color: Colors.white),
                label:'Home',
                backgroundColor: Colors.blue[800]
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.money,color: Colors.white),
                label: 'money',
                backgroundColor: Colors.blue[800]
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.book_online,color: Colors.white),
                label: 'Booking',
                backgroundColor: Colors.blue[800]
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.notifications,color: Colors.white),
              label:'notification',
              backgroundColor: Colors.blue[800],
            ),
            // BottomNavigationBarItem(
            //   icon: const Icon(Icons.help,color: Colors.white),
            //   label: 'Help',
            //   backgroundColor: Colors.blue[800],
            // ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor:  Colors.black,
          unselectedItemColor: Colors.white,
          iconSize: 25,
          onTap: _onItemTapped,
         // fixedColor: Colors.lightGreen,
          elevation:5
      ),
    );
  }
}
