import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileList {
  final String title;
  final Icon icon;

  ProfileList(this.title, this.icon);
}

List<ProfileList> profileListData = [
  ProfileList("Orders", Icon(Icons.shopping_bag_outlined)),
  ProfileList("My Details", Icon(Icons.credit_card_outlined)),
  ProfileList("Delivery Address", Icon(Icons.location_on_outlined)),
  ProfileList("Payment Methods", Icon(Icons.credit_card_outlined)),
  ProfileList("Promo Cord", Icon(Icons.airplane_ticket_outlined)),
  ProfileList("Notifecations ", Icon(Icons.notifications)),
  ProfileList("Help", Icon(Icons.help_outline_outlined)),
  ProfileList("About", Icon(Icons.info_outline)),

];
