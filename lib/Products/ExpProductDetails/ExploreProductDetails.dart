import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Models/CardList.dart';
import '../../Models/CustomCards.dart';
import '../../Models/ExploreCards.dart';
import '../../Models/ExploreModel.dart';
import '../../Models/Exploredetailcards.dart';
import '../ExploreScreen/ExploreScreen.dart';

class ExploreDetails extends StatefulWidget {
  const ExploreDetails({required this.itemName});
  final itemName;

  @override
  State<ExploreDetails> createState() => _ExploreDetailsState();
}

class _ExploreDetailsState extends State<ExploreDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreMain()));
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.itemName,
                        style: h2size20black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(AppIcons.FilterIcon),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: getCrossAxisCount(context),
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: Exploreitemlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height:150,
                          child: ExploredetailCard(Exploreitemlist[index]));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }

  int getCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust these values based on your design and testing on Tecno Spark 6 Go
    if (screenWidth <= 360) {
      return 2;
    } else if (screenWidth <= 720) {
      return 3;
    } else {
      return 4;
    }
  }
}
