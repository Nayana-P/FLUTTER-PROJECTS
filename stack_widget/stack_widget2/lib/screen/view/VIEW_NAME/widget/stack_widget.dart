import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stack_widget2/screen/core/app_colors.dart';

class StackWidget extends StatelessWidget {
final double containerheight;
final Color containercolor;
final String txt1;
final String txt2;
final String txt3;
final String svgpic;
final Color svgcolor;
final double svgheight;
final double svgbottom;

  const StackWidget({
    Key? key, required this.containerheight, required this.containercolor, required this.txt1, required this.txt2, required this.txt3, required this.svgpic, required this.svgcolor, required this.svgheight, required this.svgbottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: containerheight,
      decoration: BoxDecoration(
        color: containercolor,  
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(80),
        )               
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 35,
            bottom: 142,
            child: Text(txt1,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.whitecolorr,  
              ),
            ),
          ),
          Positioned(
            left: 35,
            bottom: 78,
            width: 280,
            child: Text(
              txt2,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.whitecolor, 
              ),
            ),
          ),
          Positioned(
            width: 280,
            bottom: svgbottom,
            left: 160,
            child: SvgPicture.asset(
              svgpic,
              height: svgheight,
              color: svgcolor,
            ),
          ),
          Positioned(
            left: 35,
            bottom: 30,
            child: Row(
          //    crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundColor: AppColors.whitecolor,
                        radius: 13,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/images/download.jpg'),
                          radius: 12,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.whitecolor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'asset/images/fashion.jpg'
                        ),
                          radius: 12,
                      ),  
                    ),
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: Text(txt3,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: AppColors.whitecolorr,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}