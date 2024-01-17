import '../Config/assets.dart';
import '../Config/strings.dart';

final List<CardItem> data = [
  CardItem(AppStrings.Item1, AppStrings.Itemdetail, Images.ItemA,AppStrings.Itemdetails),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB,AppStrings.Itemdetails),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB,AppStrings.Itemdetails),
];
class CardItem {
  final String title;
  final String description;
  final String imageUrl;
  final String detail;

  CardItem(this.title, this.description, this.imageUrl,this.detail);
}
final List<CardItem> BestSellingdata = [
  CardItem(AppStrings.Item3, AppStrings.Itemdetail, Images.ItemC,AppStrings.Itemdetails),
  CardItem(AppStrings.Item4, AppStrings.Itemdetail, Images.ItemD,AppStrings.Itemdetails),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB,AppStrings.Itemdetail),
  CardItem(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB,AppStrings.Itemdetail),
];
final List<CardItem>BottomList=[
  CardItem(AppStrings.Item5,AppStrings.Itemdetail,Images.ItemG,AppStrings.Itemdetails),
  CardItem(AppStrings.Item6,AppStrings.Itemdetail,Images.ItemH,AppStrings.Itemdetails),
  CardItem(AppStrings.Item5,AppStrings.Itemdetail,Images.ItemG,AppStrings.Itemdetails),
  CardItem(AppStrings.Item6,AppStrings.Itemdetail,Images.ItemH,AppStrings.Itemdetails),
];
final List<CardItem>Exploreitemlist=[
  CardItem(AppStrings.Bev1,AppStrings.Itemdetail,Images.ItemO,AppStrings.Itemdetails),
  CardItem(AppStrings.Bev2,AppStrings.Itemdetail,Images.ItemP,AppStrings.Itemdetails),
  CardItem(AppStrings.Bev3,AppStrings.Itemdetail,Images.ItemQ,AppStrings.Itemdetails),
  CardItem(AppStrings.Bev4,AppStrings.Itemdetail,Images.ItemR,AppStrings.Itemdetails),
  CardItem(AppStrings.Bev5,AppStrings.Itemdetail,Images.ItemS,AppStrings.Itemdetails),
  CardItem(AppStrings.Bev6,AppStrings.Itemdetail,Images.ItemT,AppStrings.Itemdetails),

];