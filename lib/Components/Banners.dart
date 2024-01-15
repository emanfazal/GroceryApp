import 'package:flutter/material.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';

class BannerWithPageView extends StatefulWidget {
  @override
  _BannerWithPageViewState createState() => _BannerWithPageViewState();
}

class _BannerWithPageViewState extends State<BannerWithPageView> {
  final PageController _pageController = PageController();
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      width: 600,
      height: 150,

      child: PageView(

        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            selectedPage = page;
          });
        },
        children: [
          buildBanner("Banner 1"),
          buildBanner("Banner 2"),
          buildBanner("Banner 3"),
        ],
      ),
    );
  }

  Widget buildBanner(String message) {
    return Stack(

      children: [
        Card(

          shadowColor: AppColors.Grey,
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
          ),

          child: Banner(
            message: message,
            location: BannerLocation.topStart,
            color: AppColors.PinkGradient,

            child:Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4)
              ),
              height:200,
              width:MediaQuery.of(context).size.width,
              child: Image.asset(Images.bannerImage,fit: BoxFit.fill,),
            ),
          ),
        ),

        Positioned(
          top: 60,
          left: 140,
          child: Column(
            children: [
              Text(AppStrings.FreshVeg, style: bannertextAlconica20),
              Text(AppStrings.Discount, style: h4size8green),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: buildPageIndicator(),
        ),
      ],
    );
  }

  Widget buildPageIndicator() {
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
}


