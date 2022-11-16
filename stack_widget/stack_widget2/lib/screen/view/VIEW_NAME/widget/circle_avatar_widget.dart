import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final IconData circleicon;
  final Color backcolor;
  final Color backcolor2;
  final Color iconcolor;
  final String iconname;
  final Color icolor;
  const CircleAvatarWidget({super.key, required this.circleicon, required this.backcolor, required this.backcolor2, required this.iconcolor, required this.iconname, required this.icolor});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CircleAvatar(
            backgroundColor: backcolor,
            radius: 26,
            child: CircleAvatar(
              backgroundColor: backcolor2,
              radius: 25,
              child: Icon(
                circleicon,
                color: iconcolor,
              ),
            ),
          ),
        ),
        Text(
          iconname,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: icolor,
          ),            
        ),
      ],
    );                         
  }
}