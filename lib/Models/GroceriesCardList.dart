import 'dart:ui';

import 'package:groceries_app_ui/Config/Colors.dart';

import '../Config/assets.dart';
import '../Config/strings.dart';

final List<GroceriesItem> listdata=[
  GroceriesItem(Images.ItemE, AppStrings.Pulses,AppColors.DarkOrange),
  GroceriesItem(Images.ItemF, AppStrings.Rice,AppColors.SoftBlue),
  GroceriesItem(Images.ItemE, AppStrings.Pulses,AppColors.DarkOrange),
  GroceriesItem(Images.ItemE, AppStrings.Pulses,AppColors.DarkOrange),
];
class GroceriesItem{
  final String ItemName;
  final String imagePath;
  final Color cardColor;
  GroceriesItem(this.imagePath,this.ItemName,this.cardColor);
}