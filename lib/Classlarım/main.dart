import 'package:flutter/material.dart';

import '../Screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //aptal bannerı silmeyi buldum sonunda
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        //  "/homepage": (context) => ProfileScreen(),
      },
    );
    // title: 'Diyetisyen',
    // theme: ThemeData(
    // primarySwatch: Colors.blue,
    //),
    // home: ProfileScreen(),
    // home: LoginPage(),
  }
}
