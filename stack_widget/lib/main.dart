import 'package:flutter/material.dart';
import 'package:stack_widget/screen/view/VIEW_NAME/name_view.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StackScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}