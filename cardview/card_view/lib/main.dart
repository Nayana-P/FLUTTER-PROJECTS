import 'package:card_view/screen/core/app_colors.dart';
import 'package:card_view/screen/view/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.whitecolor
        )
      ),
      home: const HomeScreen(),
    );
  }
}