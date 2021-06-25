import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.jpg"),
              ),
              Positioned(
                bottom: 0,
                right: -10,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: TextButton(
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
