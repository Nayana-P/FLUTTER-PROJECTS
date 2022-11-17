import 'package:flutter/material.dart';
import 'package:spacer_widget/screen/core/app_colors.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

  double screenwidth = MediaQuery.of(context).size.width;
  double screenheight = MediaQuery.of(context).size.height;

    return Container(
      width: screenwidth * 0.277,
      height: screenheight * 0.119,
      color: AppColors.containerColor,
    );
  }
}