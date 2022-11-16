import 'package:flutter/material.dart';
import 'package:stack_widget/screen/core/app_colors.dart';
import 'package:stack_widget/screen/view/VIEW_NAME/widget/stack_widget.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:   const [
            PositionedWidget(
              right: 20,
              left: 20, 
              top: 185,
              iconcolor: AppColors.redAvatar, 
              backgroundcolor: AppColors.redBackground
            ),
            PositionedWidget(
              right: 20,
              left: 20, 
              top: 263,
              iconcolor: AppColors.greenAvatar, 
              backgroundcolor: AppColors.greenBackground,
            ),
             PositionedWidget(
              right: 20,
              left: 20, 
              top: 340,
              iconcolor: AppColors.orangeAvatar, 
              backgroundcolor: AppColors.orangeBackground,
            ),
             PositionedWidget(
              right: 20,
              left: 20, 
              top: 418,
              iconcolor: AppColors.blueAvatar, 
              backgroundcolor: AppColors.blueBackground,
            ),
          ],
        ),
      ),
    );
  }
}