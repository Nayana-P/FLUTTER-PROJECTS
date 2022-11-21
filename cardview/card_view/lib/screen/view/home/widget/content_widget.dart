import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  final String content;
  final Color textcolor;
  final FontWeight fontweight;
  final double fontsize;
  const ContentWidget({
    Key? key, required this.content, required this.textcolor, required this.fontweight, required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        color: textcolor,
        fontWeight: fontweight,
        fontSize: fontsize
      ),
    );
  }
}