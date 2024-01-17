import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Models/CardList.dart';
import '../../Models/CustomCards.dart';
import '../../Models/ExploreCards.dart';
import '../../Models/ExploreModel.dart';
class ExploreDetails extends StatefulWidget {
  const ExploreDetails({required this.itemName});
  final itemName;

  @override
  State<ExploreDetails> createState() => _ExploreDetailsState();
}

class _ExploreDetailsState extends State<ExploreDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Center(
                      child: Text(
                        widget.itemName,
                        style: h2size20black,
                      ),
                    ),
                  ),
                  SizedBox(width: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: SvgPicture.asset(AppIcons.FilterIcon),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: Exploreitemlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomCard(Exploreitemlist[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
