import 'package:flutter/material.dart';
import 'package:spacer_widget/screen/core/app_colors.dart';
import 'package:spacer_widget/screen/view/VIEW_NAME/widget/newcontainer_widget.dart';

class SpacerScreen extends StatelessWidget {
  const SpacerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20,bottom: 10),
          child: SizedBox(
            width: screenwidth,
            height:  screenheight,
            child: Column(
              children: [
                Row(
                  children: const [
                    NewWidget(),
                    Spacer(),
                    NewWidget()
                  ],
                ),
                Row(
                  children:  [
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 3,
                        ),
                      ),
                      width: screenwidth * 0.277,
                      height: screenheight * 0.119,
                    ),
                     const Spacer(),
                  ],
                ),
                Row(
                  children: const [
                    NewWidget()
                  ],
                ),
                const Spacer(),
                Row(
                  children: const [
                    NewWidget(),
                    Spacer(),
                    NewWidget(),
                  ],
                ),
                Row(
                  children: const [
                    Spacer(),
                    NewWidget(),
                    Spacer(),
                  ],
                ),
                Row(
                  children: const [
                    NewWidget()
                  ],
                ),
                Row(
                  children: const [
                    Spacer(),
                    NewWidget()
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

