import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Config/strings.dart';
import 'package:groceries_app_ui/Screens/HomeScreen.dart';

import '../../Components/TopGradientImageContainer.dart';
import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import 'LocationScreenComponents.dart';
import 'ZoneAreaSelection.dart';
class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
body: Expanded(
  child: Column(
    children: [
      GradientImageContainer(imagepath: Images.Seleclocation,
      leading: IconButton(
  
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
  
      ),
      SizedBox(height: 10,),
      ComponentsLocationScreen(),
      SizedBox(height: 40,),
      Flexible(child: CityAreaPick()),
      SizedBox(height: 10,),
Flexible(
  child: PrimaryButton(text: AppStrings.Submit, textStyle: h2size18, press: (){
    NavigatetoHome(context);
  },),
),
  
    ],
  ),
),
      ),
    );
  }
}
NavigatetoHome(BuildContext context){
  Navigator.push(
    context ,
    MaterialPageRoute(builder: (context) =>HomeScreen()),
  );
}
