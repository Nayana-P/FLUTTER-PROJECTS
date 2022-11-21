import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData iconName;
  final Color iconColor;
  final double iconSize; 
  const IconWidget({
    Key? key, required this.iconName, required this.iconColor, required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconName,
      color: iconColor,
      size: iconSize,
    );
  }
}