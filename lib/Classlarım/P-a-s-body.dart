import 'ProfileMenu.dart';
import 'ProfilePic.dart';
import '../Screens/grafik_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ApiCekmeYeri.dart';
import '../Screens/Hesabim_screen.dart';
import '../Screens/HocaAciklamaScreen.dart';

class Bodydart extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Bodydart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: "Hesabım",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HesabimScreen()),
            );
          },
        ),
        ProfileMenu(
          text: "Beslenme Durumu",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BeslenmeDurumu()),
            );
          },
        ),
        ProfileMenu(
          text: "Diyetisyenler",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Diyetisyenler()),
            );
          },
        ),
        ProfileMenu(
          text: "Açıklama",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AciklamaScreen()),
            );
          },
        ),
      ],
    );
  }
}
