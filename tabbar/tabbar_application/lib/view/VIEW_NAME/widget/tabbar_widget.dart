import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_colors.dart';

class TabbarWidget extends StatelessWidget {
  final IconData iconname;
  
  const TabbarWidget({
    Key? key, required this.iconname
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        iconname,
        color: AppColors.whitecolor,
      ),
    );
  }
}