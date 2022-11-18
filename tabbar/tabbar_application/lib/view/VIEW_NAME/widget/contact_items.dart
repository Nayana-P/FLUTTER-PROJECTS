import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final String name;
  final String message;
  final String contactimage;
  final String time;


  const ContactWidget({super.key, required this.name, required this.message, required this.time, required this.contactimage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(message),
      leading: CircleAvatar(
        backgroundImage: AssetImage(contactimage),
      ),
      trailing: Text(time),
    );
  }
}