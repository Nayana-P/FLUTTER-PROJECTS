import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_colors.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return  Container(
      width: screenwidth,
      height: screenheight,
      color: AppColors.bluecolor,
    );
  }
}