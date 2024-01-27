import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter_svg/svg.dart';
import '../Config/Colors.dart';
import '../Config/assets.dart';
final PageController _pageController = PageController();

class Products extends StatelessWidget {
  final String imagePath;
final String itemname;
final String detail;
  final int selectedPage;
  final Function press;

  const Products({required this.imagePath,required this.itemname,required this.detail,required this.selectedPage,
  required this.press,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                    splashColor: AppColors.primaryColor,
                    hoverColor: AppColors.primaryColor,
                    onTap: (){
                      press();
                },
                    child: Icon(Icons.arrow_back_ios,color: AppColors.Blackheading,weight: 220,)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    splashColor: AppColors.primaryColor,
                    hoverColor: AppColors.primaryColor,
                    onTap: (){

                    },

                      child: SvgPicture.asset(AppIcons.Upload,width: 20,height: 30,)),
                )
              ],

            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset(imagePath,width: 329,height: 129,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Align(
                 alignment: Alignment.bottomCenter,
                  child: buildPageIndicator(selectedPage)),
            ),
          ],
        ),
    );
  }
}
Widget buildPageIndicator(int selectedPage) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(3, (index) {
      return Container(
        width: 5,
        height: 5,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedPage == index ? AppColors.primaryColor: AppColors.Grey,
        ),
      );
    }),
  );
}

