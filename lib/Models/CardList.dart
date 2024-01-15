import '../Config/assets.dart';

final List<CardItem> data = [
  CardItem('Item 1', 'Description 1', Images.ItemA),
  // CardItem('Item 2', 'Description 2', ),
  // CardItem('Item 3', 'Description 3'),

];
class CardItem {
  final String title;
  final String description;
  final String imageUrl;

  CardItem(this.title, this.description, this.imageUrl);
}