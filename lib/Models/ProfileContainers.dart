import 'package:groceries_app_ui/Models/ProfileModel.dart';
import 'package:flutter/material.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
class ProfileItems extends StatelessWidget {
  const ProfileItems(this.ProfileListItems);
final ProfileList ProfileListItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.Grey,
            width: 1.0, // You can adjust the width as needed
          ),
        ),
      ),
      child: Row(
        children: [
          ProfileListItems.icon,
          SizedBox(width: 10,),
          Text(ProfileListItems.title,style: h2size18black,),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
