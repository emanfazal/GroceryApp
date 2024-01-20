import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app_ui/Models/ExploreCards.dart';
import 'package:groceries_app_ui/Products/FilterProducts.dart';

import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Config/strings.dart';
import '../../Models/CardList.dart';
import '../../Models/ExploreModel.dart';
import '../../Models/Exploredetailcards.dart';

class ExploreBody extends StatefulWidget {
  const ExploreBody({Key? key}) : super(key: key);

  @override
  State<ExploreBody> createState() => _ExploreBodyState();
}

class _ExploreBodyState extends State<ExploreBody> {
  bool isSearchTapped = false;
  bool isFilterVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(child: Text(AppStrings.FindProducts, style: h2size20black)),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onTap: () {
                    setState(() {
                      isSearchTapped = true;
                      isFilterVisible = true;
                    });
                  },
                  cursorColor: AppColors.primaryColor,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Search Store',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: isSearchTapped
                        ? IconButton(
                      color: AppColors.Grey,
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        setState(() {
                          isSearchTapped = false;
                          isFilterVisible =false ;


                        });
                      },
                    )
                        : null,
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
              SizedBox(width: 10),
              Visibility(
                visible: isFilterVisible,
                child: IconButton(
                  icon:SvgPicture.asset(AppIcons.FilterIcon),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>FilterScreen()));

                    });
                  },
                ),
              ),
            ],
          ),
        ),

        Visibility(
          visible: isSearchTapped,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getCrossAxisCount(context),
                crossAxisSpacing: 2,
                mainAxisSpacing: 10.0,
              ),
              itemCount: Exploreitemlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  child: ExploredetailCard(Exploreitemlist[index]),
                );
              },
            ),
          ),
        ),
      Visibility  (
        visible: !isFilterVisible,

          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 450,
                child: Expanded(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: listitems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExploreCards(listitems[index]);
                    },
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }

  int getCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 360) {
      return 2;
    } else if (screenWidth <= 720) {
      return 3;
    } else {
      return 4;
    }
  }
}
