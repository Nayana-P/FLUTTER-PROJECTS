import 'package:flutter/material.dart';
import 'package:stack_widget2/screen/core/app_colors.dart';
import 'package:stack_widget2/screen/core/app_strings.dart';
import 'package:stack_widget2/screen/view/VIEW_NAME/widget/circle_avatar_widget.dart';
import 'package:stack_widget2/screen/view/VIEW_NAME/widget/stack_widget.dart';

class ScreenStack extends StatelessWidget {
 
  const ScreenStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: screenwidth,
          height: screenheight,
          child: Stack(
            children:  [         
              //gray container
              Container( 
                height: screenheight,
                color: AppColors.fifthContainer, 
              ), 
              //blue container            
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 42.0),
                  child: StackWidget(
                    containercolor: AppColors.fourthContainer, 
                    containerheight: screenheight *0.357, 
                    txt1: AppStrings.ttime, 
                    txt2: AppStrings.tcontent, 
                    txt3: AppStrings.join1, svgpic: 'asset/icons/xd.svg', 
                    svgcolor: AppColors.svgcolor3, 
                    svgheight: 100, 
                    svgbottom: 25,
                  ),
                ),
              ),    
              //purple container
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: StackWidget(
                    containercolor: AppColors.thirdContainer, 
                    containerheight: screenheight *0.357, 
                    txt1: AppStrings.stime, 
                    txt2: AppStrings.scontent, 
                    txt3: AppStrings.join2, svgpic: 'asset/icons/global.svg', 
                    svgcolor: AppColors.svgcolor1, 
                    svgheight: 65, 
                    svgbottom: 35,
                  ),
                ),
              ),     
              //pink container
              Align(
                alignment: Alignment.topCenter,
                child: StackWidget(
                  containercolor: AppColors.secondContainer, 
                  containerheight: screenheight * 0.396, 
                  txt1: AppStrings.ftime, 
                  txt2: AppStrings.fcontent, 
                  txt3: AppStrings.join1, svgpic: 'asset/icons/pulse 1.svg', 
                  svgcolor: AppColors.svgcolor2, 
                  svgheight: 95, 
                  svgbottom: 25,
                  ),
              ),   
              //white container
              Container( 
                height: screenheight * 0.152,
                decoration: const BoxDecoration(
                  color: AppColors.whitecolor,  
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  )               
                ),
                child: Padding(
                padding: const EdgeInsets.only(top:18, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:   [ 
                          //first avatar                      
                          Stack(
                            clipBehavior: Clip.none,
                            children: 
                              const [
                                CircleAvatar(
                                  backgroundImage: AssetImage('asset/images/download.jpg'),
                                  radius: 25,
                              ),
                              Positioned(
                                left: 30,
                                bottom: 38,
                                child: CircleAvatar(
                                    backgroundColor: AppColors.fifthContainer,
                                    radius: 10,
                                    child: Text(AppStrings.message,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.whitecolor
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          const Text(
                            AppStrings.profilename,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      //second avatar
                      const CircleAvatarWidget(     
                        circleicon: Icons.trending_up,
                        backcolor: AppColors.purplecolor, 
                        backcolor2: AppColors.whitecolor, 
                        iconcolor: AppColors.blackcolor, 
                        iconname: AppStrings.trending,
                        icolor: AppColors.blackcolor,          
                      ),           
                      //third avatar
                      const CircleAvatarWidget(
                        circleicon: Icons.favorite_border,
                        backcolor: AppColors.graycolor, 
                        backcolor2: AppColors.whitecolor, 
                        iconcolor: AppColors.graycolor, 
                        iconname: AppStrings.health,
                        icolor: AppColors.graycolor,
                      )
                    ],
                  ),
                ),
              ),
            ]
          ),
        ),     
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.add,
          color: Colors.black,),
      ),     
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

