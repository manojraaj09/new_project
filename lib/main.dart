import 'package:flutter/material.dart';


import 'login/navigation_page.dart';
import 'sample/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
    home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

