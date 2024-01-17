import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Models/ExploreCards.dart';

import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import '../../Models/ExploreModel.dart';
import '../SearchProducts.dart';
class ExploreBody extends StatefulWidget {
  const ExploreBody({super.key});

  @override
  State<ExploreBody> createState() => _ExploreBodyState();
}

class _ExploreBodyState extends State<ExploreBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(child: Text(AppStrings.FindProducts,style: h2size20black,)),

        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: (){
              AppColors.GreenGradient;
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: TextField(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchProducts()));

              },
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
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height:MediaQuery.of(context).size.height,
            width: 450,
            child: Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: listitems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height:400,
                      width: 500,
                      child: ExploreCards(listitems[index]));          },
              ),
            ),
          ),
        )
      ],
    );
  }
}
