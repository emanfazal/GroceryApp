import 'dart:ui';

import 'package:groceries_app_ui/Config/Colors.dart';

import '../Config/assets.dart';
import '../Config/strings.dart';
final List<ExploreItems>listitems=[
  ExploreItems(Images.ItemI, AppStrings.ItemEx1, AppColors.SoftBlue),
  ExploreItems(Images.ItemJ, AppStrings.ItemEx2, AppColors.coralColor),
  ExploreItems(Images.ItemK, AppStrings.ItemEx3, AppColors.paleGoldColor),
  ExploreItems(Images.ItemL, AppStrings.ItemEx4, AppColors.lavenderBlushColor),
  ExploreItems(Images.ItemM, AppStrings.ItemEx5, AppColors.lightSkyBlueColor),
  ExploreItems(Images.ItemN, AppStrings.ItemEx6, AppColors.paleGoldColor),
  ExploreItems(Images.ItemN, AppStrings.ItemEx6, AppColors.paleGoldColor),
  ExploreItems(Images.ItemN, AppStrings.ItemEx6, AppColors.paleGoldColor),
];

class ExploreItems{
  final String ItemName;
  final String imagePath;
  final Color cardColor;
  ExploreItems(this.imagePath,this.ItemName,this.cardColor);
}