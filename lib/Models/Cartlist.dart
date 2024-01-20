import '../Config/assets.dart';
import '../Config/strings.dart';

class CartItems {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  CartItems(this.title, this.description, this.imageUrl,this.price);
}
final List<CartItems>dataCart=[
  CartItems(AppStrings.Item3,AppStrings.Itemdetail,Images.ItemC,"\$4.99"),
  CartItems(AppStrings.Item2, AppStrings.Itemdetail, Images.ItemB,AppStrings.Price),
  CartItems(AppStrings.Item3,AppStrings.Itemdetail,Images.ItemD,"\$4.99"),
  CartItems(AppStrings.Item3,AppStrings.Itemdetail,Images.ItemE,"\$4.99"),
  CartItems(AppStrings.Item3,AppStrings.Itemdetail,Images.ItemF,"\$4.99"),

];