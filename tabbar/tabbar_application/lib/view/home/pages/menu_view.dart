import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_colors.dart';


class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return  Container(
      width: screenwidth,
      height: screenheight,
      color: AppColors.redcolor,
    );
  }
}