import '../Config/assets.dart';
import '../Config/strings.dart';

final List<CardItem> data = [
  CardItem(AppStrings.Item1, AppStrings.Itemdetail, Images.ItemA),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB),
];
class CardItem {
  final String title;
  final String description;
  final String imageUrl;

  CardItem(this.title, this.description, this.imageUrl);
}
final List<CardItem> BestSellingdata = [
  CardItem(AppStrings.Item3, AppStrings.Itemdetail, Images.ItemC),
  CardItem(AppStrings.Item4, AppStrings.Itemdetail, Images.ItemD),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB),
];
final List<CardItem>BottomList=[
  CardItem(AppStrings.Item5,AppStrings.Itemdetail,Images.ItemG),
  CardItem(AppStrings.Item6,AppStrings.Itemdetail,Images.ItemH),
  CardItem(AppStrings.Item5,AppStrings.Itemdetail,Images.ItemG),
  CardItem(AppStrings.Item6,AppStrings.Itemdetail,Images.ItemH),
];