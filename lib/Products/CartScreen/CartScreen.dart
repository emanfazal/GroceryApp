import 'package:flutter/material.dart';

import 'Cart.dart';
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CartScreen(),
      ),
    );

  }
}
