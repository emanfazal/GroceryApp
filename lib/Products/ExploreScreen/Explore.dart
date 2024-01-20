import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Products/ExploreScreen/Explorebody.dart';
class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return ExploreBody();
  }
}
