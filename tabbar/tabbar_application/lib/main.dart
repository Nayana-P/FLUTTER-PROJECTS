import 'package:flutter/material.dart';
import 'package:tabbar_application/view/VIEW_NAME/view_name.dart';

void main() {
  runApp(const MyApp()); 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabbarScreen(),
    );
  }
}