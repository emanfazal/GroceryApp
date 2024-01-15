import 'package:flutter/material.dart';

import 'CardList.dart';
class CustomCard extends StatelessWidget {
  final CardItem item;

  CustomCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(item.imageUrl,height: 50,),
          ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your button 1 action
                },
                child: Text('Button 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button 2 action
                },
                child: Text('Button 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}