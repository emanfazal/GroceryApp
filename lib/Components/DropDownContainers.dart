import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';

class DropDownContainers extends StatefulWidget {
  const DropDownContainers({super.key});

  @override
  State<DropDownContainers> createState() => _DropDownContainersState();
}

class _DropDownContainersState extends State<DropDownContainers> {
  bool isContainerVisible = false;
  bool isnutritonContainer = false;
  bool isReviewContainer = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isContainerVisible = !isContainerVisible;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.ProductDetail,
                style: h2size16black,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(isContainerVisible
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
        Visibility(
          visible: isContainerVisible,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Center(
              child: Text(
                AppStrings.Itemdetails,
                style: h3size14grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isnutritonContainer = !isnutritonContainer;
            });
          },
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.Nutritions,
                style: h2size16black,
              ),
              Spacer(),
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "10 g",
                  style: h4size9grey,
                )),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(isnutritonContainer
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down),
                  )),
            ],
          ),
        ),
        Visibility(
          visible: isnutritonContainer,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Center(
              child: Text(
                AppStrings.Itemdetails,
                style: h3size14grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isReviewContainer = !isReviewContainer;
            });
          },
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.Review,
                style: h2size16black,
              ),
              Spacer(),
              Container(
                height: 14,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 14,
                  // Set the size of each star
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFFF3603F),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(isReviewContainer
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
        Visibility(
          visible: isReviewContainer,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Center(
              child: Text(
                AppStrings.Itemdetails,
                style: h3size14grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
