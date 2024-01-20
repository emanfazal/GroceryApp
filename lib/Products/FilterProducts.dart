import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Products/ExploreScreen/Explorebody.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
import 'ExploreScreen/Explore.dart';
import 'ExploreScreen/ExploreScreen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int? selectedItem;
  int? selectedBrand;
  List<String> categories = ['Eggs', 'Noodles & Pasta', 'Chips & Crisps', 'Fast Food'];
  List<String> Brand = ['Individual Callection', 'Cocola', 'Ifad', 'Kazi Farmas'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ExploreMain()));

            },
            icon: Icon(Icons.close),
          ),
          title: Text(
            "Filters",
            style: h2size20black,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.white2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(AppStrings.Categories, style: h2size24black),
                ),
                SizedBox(height: 20),
                Column(
                  children: List.generate(categories.length, (index) {
                    return Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.green,
                          value: selectedItem == index,
                          onChanged: (value) {
                            setState(() {
                              selectedItem = value! ? index : null;
                            });
                          },
                        ),
                        SizedBox(width: 20), // Adjust the width as needed
                        Text(
                          categories[index],
                          style: TextStyle(
                            color: selectedItem == index ? Colors.green : null,
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            height: 1,
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    );
                  }),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(AppStrings.Brand, style: h2size24black),

                ),
                SizedBox(height: 20,),
                Column(
                  children: List.generate(Brand.length, (index) {
                    return Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.green,
                          value: selectedBrand == index,
                          onChanged: (value) {
                            setState(() {
                              selectedBrand = value! ? index : null;
                            });
                          },
                        ),
                        SizedBox(width: 20), // Adjust the width as needed
                        Text(
                          Brand[index],
                          style: TextStyle(
                            color: selectedBrand == index ? Colors.green : null,
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            height: 1,
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    );
                  }),

                ),
Spacer(),
// SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 30),
                  child: PrimaryButton(text: AppStrings.ApplyFilter, textStyle: h2size18, press: (){},),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
