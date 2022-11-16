import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  final double right;
  final double left;
  final double top;
  final Color iconcolor;
  final Color backgroundcolor;
  const PositionedWidget({super.key, required this.right, required this.left, required this.top, required this.iconcolor, required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      right: right,
      left: left,
      top: top,
      child: CircleAvatar(
        foregroundColor: iconcolor,
        backgroundColor: backgroundcolor,
        radius: 50,
        child: const Icon(
          Icons.account_circle,
          size: 50,
        ),            
      ),
    );
  }
}