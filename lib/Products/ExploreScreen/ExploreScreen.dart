import 'package:flutter/material.dart';

import 'Explore.dart';
class ExploreMain extends StatefulWidget {
  const ExploreMain({super.key});

  @override
  State<ExploreMain> createState() => _ExploreMainState();
}

class _ExploreMainState extends State<ExploreMain> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(child: Explore()),

    );
  }
}
