import 'package:flutter/material.dart';

import '../Classlarım/P-a-s-body.dart';

class Profile_aciklama_screen extends StatefulWidget {
  @override
  _Profile_aciklama_screenState createState() =>
      _Profile_aciklama_screenState();
}

class _Profile_aciklama_screenState extends State<Profile_aciklama_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Text("Profile"),
      ),
      body: Bodydart(),
    );
  }
}
