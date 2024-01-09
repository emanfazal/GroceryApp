import 'package:flutter/material.dart';

import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import 'ZoneAreaSelection.dart';
class ComponentsLocationScreen extends StatefulWidget {
  const ComponentsLocationScreen({super.key});

  @override
  State<ComponentsLocationScreen> createState() => _ComponentsLocationScreenState();
}

class _ComponentsLocationScreenState extends State<ComponentsLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppStrings.SelectLocation,style: h1size26,),
        SizedBox(height: 20,),
        Padding(

          padding: const EdgeInsets.only(left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text(AppStrings.Content,style: h3size16grey,)),
              SizedBox(height: 20,),



            ],
          ),
        )
      ],

    );
  }
}
