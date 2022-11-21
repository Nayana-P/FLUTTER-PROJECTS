import 'package:card_view/screen/core/app_colors.dart';
import 'package:card_view/screen/core/app_constants.dart';
import 'package:card_view/screen/core/app_strings.dart';
import 'package:card_view/screen/view/home/widget/content_widget.dart';
import 'package:card_view/screen/view/home/widget/icon_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appbarTitle,
          style: TextStyle(
              color: AppColors.blackcolor, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColors.bluecolor,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(AppConstants.baseMargin),
        width: screenwidth,
        height: screenheight,
        color: AppColors.backgroundcolor,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppConstants.baseBorderRadius)),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/teddy.jpeg',
                    width: screenwidth * 0.972,
                    height: screenheight * 0.171,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppConstants.basePadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ContentWidget(
                          content: AppStrings.fundriser,
                          fontweight: FontWeight.bold,
                          textcolor: AppColors.bluecolor,
                          fontsize: 15,
                        ),
                        const Divider(
                          color: AppColors.graycolor,
                        ),
                        const ContentWidget(
                          content: AppStrings.charity,
                          fontweight: FontWeight.w500,
                          textcolor: AppColors.blackcolor,
                          fontsize: 18,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 7, bottom: 7),
                          child: ContentWidget(
                            content: AppStrings.description,
                            fontweight: FontWeight.bold,
                            textcolor: AppColors.graycolor,
                            fontsize: 14,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: IconWidget(
                                  iconColor: AppColors.bluecolor,
                                  iconName: Icons.access_time,
                                  iconSize: 19),
                            ),
                            const ContentWidget(
                              content: AppStrings.time,
                              fontweight: FontWeight.bold,
                              textcolor: AppColors.bluecolor,
                              fontsize: 14,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: IconWidget(
                                  iconColor: AppColors.bluecolor,
                                  iconName: Icons.location_on,
                                  iconSize: 19),
                            ),
                            const ContentWidget(
                              content: AppStrings.location,
                              fontweight: FontWeight.bold,
                              textcolor: AppColors.bluecolor,
                              fontsize: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: 2,
        ),
      ),
    );
  }
}
