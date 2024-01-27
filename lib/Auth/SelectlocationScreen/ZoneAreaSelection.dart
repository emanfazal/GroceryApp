import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
import 'package:groceries_app_ui/Config/assets.dart';

import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
class CityAreaPick extends StatefulWidget {
  @override
  _CityAreaPickState createState() => _CityAreaPickState();
}

class _CityAreaPickState extends State<CityAreaPick> {
  String? selectedZone;
  String? selectedArea;

  List<String> zones = ['Zone 1', 'Zone 2', 'Zone 3'];
  Map<String, List<String>> areasByZone = {
    'Zone 1': ['Area A', 'Area B', 'Area C'],
    'Zone 2': ['Area D', 'Area E'],
    'Zone 3': ['Area F', 'Area G', 'Area H'],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Your Zone',style: h3size16grey,),
          InputDecorator(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
               // Icon size
            ),
            child: DropdownButton<String>(
              icon: SvgPicture.asset('Assets/icons/dropdownicon.svg',
                height: 10,
                width: 10,
                color: AppColors.Grey,
              ),
              value: selectedZone,
              hint: Text('Select Zone                                     ',style: h3size16grey,),
              onChanged: (String? newValue) {
                setState(() {
                  selectedZone = newValue;
                  selectedArea = null;
                });
              },
              items: [
                DropdownMenuItem(

                  child: Text('Select Zone',style: h3size16grey,),

                  value: null,
                ),
                ...zones.map((String zone) {
                  return DropdownMenuItem<String>(
                    value: zone,
                    child: Text(zone),
                  );
                }),
              ],
            ),
          ),
          // SizedBox(height: 10),
          Text('Your Area                         ',style: h3size16grey,),
          InputDecorator(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),

            ),

            child: DropdownButton<String>(
              icon: SvgPicture.asset(AppIcons.dropdownicon,
              height: 10,
              width: 10,
                color: AppColors.Grey,
              ),
              value: selectedArea,
              hint: Text('Types of Your Area                         ',style: h3size16grey,),
              onChanged: (String? newValue) {
                setState(() {
                  selectedArea = newValue;
                });
              },
              items: selectedZone != null && areasByZone.containsKey(selectedZone!)
                  ? [
                ...areasByZone[selectedZone!]!.map((String area) {
                  return DropdownMenuItem<String>(

                    value: area,
                    child: Text(area),
                  );
                }),
              ]
                  : [],
            ),
          ),
        ],
      ),
    );
  }
}

// class CityAreaPick extends StatefulWidget {
//   @override
//   _CityAreaPickState createState() => _CityAreaPickState();
// }
//
// class _CityAreaPickState extends State<CityAreaPick> {
//   String? selectedZone;
//   String? selectedArea;
//
//   List<String> zones = ['Zone 1', 'Zone 2', 'Zone 3'];
//   Map<String, List<String>> areasByZone = {
//     'Zone 1': ['Area A', 'Area B', 'Area C'],
//     'Zone 2': ['Area D', 'Area E'],
//     'Zone 3': ['Area F', 'Area G', 'Area H'],
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text('Your Zone'),
//           InputDecorator(
//             decoration: InputDecoration(
//               border: InputBorder.none, // Remove the border
//               contentPadding: EdgeInsets.symmetric(horizontal: 10),
//             ),
//             child: DropdownButton<String>(
//               value: selectedZone,
//               hint: Text('Select Zone'),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedZone = newValue;
//                   selectedArea = null;
//                 });
//               },
//               items: [
//                 DropdownMenuItem(
//                   child: Text('Select Zone'),
//                   value: null,
//                 ),
//                 ...zones.map((String zone) {
//                   return DropdownMenuItem<String>(
//                     value: zone,
//                     child: Text(zone),
//                   );
//                 }),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Text('Your Area'),
//           InputDecorator(
//             decoration: InputDecoration(
//               border: InputBorder.none, // Remove the border
//               contentPadding: EdgeInsets.symmetric(horizontal: 10),
//             ),
//             child: DropdownButton<String>(
//               value: selectedArea,
//               hint: Text('Types of Your Area'),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedArea = newValue;
//                 });
//               },
//               items: selectedZone != null && areasByZone.containsKey(selectedZone!)
//                   ? [
//                 ...areasByZone[selectedZone!]!.map((String area) {
//                   return DropdownMenuItem<String>(
//                     value: area,
//                     child: Text(area),
//                   );
//                 }),
//               ]
//                   : [],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
