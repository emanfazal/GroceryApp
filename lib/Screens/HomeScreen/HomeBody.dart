import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/assets.dart';
import '../../Components/Banners.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';

class HomescreenBody extends StatefulWidget {
  const HomescreenBody({Key? key}) : super(key: key);

  @override
  State<HomescreenBody> createState() => _HomescreenBodyState();
}

class _HomescreenBodyState extends State<HomescreenBody> {
  @override
  Widget build(BuildContext context){
    return Column(

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

        // Container(
        //   height: 240,
        //   child: PageView(
        //     children: [
        //       buildBanner(),
        //       buildBanner(),
        //       buildBanner(),
        //
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
