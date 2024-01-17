import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/assets.dart';
import 'package:groceries_app_ui/Models/GroceriesCardList.dart';
import '../../Components/Banners.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../Models/CardList.dart';
import '../../Models/CustomCards.dart';
import '../../Models/CustomGroceriesCard.dart';

class HomescreenBody extends StatefulWidget {
  const HomescreenBody({Key? key}) : super(key: key);

  @override
  State<HomescreenBody> createState() => _HomescreenBodyState();
}

class _HomescreenBodyState extends State<HomescreenBody> {
  late int selectedPage;
late final PageController _pageController;

  @override
  void initState() {


    super.initState();
  }
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(

            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Images.login),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: AppColors.darkGrey),
                            SizedBox(width: 10),
                            Text(AppStrings.Location, style: h2size18black),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                AppColors.GreenGradient;
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: TextField(
                cursorColor: AppColors.primaryColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search Store',

                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {

                  print(value);
                },
              ),
            ),
          ),
      SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
              child: BannerWithPageView()),
          SizedBox(height: 10,),

          Padding(
           padding: EdgeInsets.symmetric(horizontal: 20),

           child: Row(
             children: [
               Text(AppStrings.Offer,style: h1size24,),
               SizedBox(width: 75,),
               InkWell(
                 onTap: (){},
                   child: Text(AppStrings.Seeall,style: h2size16green,))
             ],
           ),
         ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: SingleChildScrollView(
                child: Container(
                  height: 250,
                  width: 100,
                color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return CustomCard(data[index]);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Row(
              children: [
                Text(AppStrings.BestSelling,style: h1size24,),
                SizedBox(width: 75,),
                InkWell(
                    onTap: (){},
                    child: Text(AppStrings.Seeall,style: h2size16green,))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: SingleChildScrollView(
                child: Container(
                  height: 250,
                  width: 100,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: BestSellingdata.length,
                    itemBuilder: (context, index) {
                      return CustomCard(BestSellingdata[index]);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Row(
              children: [
                Text(AppStrings.Groceries,style: h1size24,),
                SizedBox(width: 75,),
                InkWell(
                    onTap: (){},
                    child: Text(AppStrings.Seeall,style: h2size16green,))
              ],
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Container(
        height: 90,
        width:MediaQuery.of(context).size.width,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listdata.length,
          itemBuilder: (context,index) {
            return GroceriesCard(listdata[index]);
          },
        ),
      ),
        ),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: SingleChildScrollView(
                child: Container(
                  height: 250,
                  width: 100,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listdata.length ,                  itemBuilder: (context, index) {
                      return CustomCard(BottomList[index]);
                    },
                  ),
                ),
              ),
            ),
          ),

        ],
      );

  }
}

