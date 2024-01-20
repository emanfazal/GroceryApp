import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/SocialMediaButtons.dart';
import 'package:groceries_app_ui/Config/Colors.dart';

import '../../Components/LogoutButton.dart';
import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Models/ProfileContainers.dart';
import '../../Models/ProfileModel.dart';
class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
            CircleAvatar(child: Image.asset(Images.ProfileImage, width: 126,  // double the radius to cover the full diameter
              height: 126,),
              radius: 33,
            ),
                SizedBox(width: 20,),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Text("Afsar Hossen",style: h2size20black,),
                          SizedBox(width: 20,),
                          Icon(Icons.mode_edit_outline,color: AppColors.primaryColor,)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 5),
                      child: Text("Imshuvo97@gmail.com",style: h3size16grey,),
                    ),

                  ],

                )

              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: profileListData.length,
            itemBuilder: (context, index) {
              return ProfileItems(profileListData[index]);
            },
          ),
        ),
        SizedBox(height: 10,),
        LogoutButton(text: 'Log Out', textStyle: h2size18green, color: AppColors.white2,  press:(){

        },),
        // SocialButtons(text: 'Log Out', textStyle: h2size18green, color: AppColors.white2, iconpath: , press:(){},),
      ],
    );
  }
}
