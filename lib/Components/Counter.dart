import 'package:flutter/material.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  Color buttonColor = Colors.grey;
  Color DbuttonColor=Colors.grey;

  @override
  void _incrementCounter() {
    setState(() {
      buttonColor =AppColors.primaryColor;
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      DbuttonColor =AppColors.primaryColor;
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          color:DbuttonColor ,
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          icon:Icon(Icons.remove),
        ),
        Container(
          height: 45,
          width: 45,
          decoration:BoxDecoration(
            color: AppColors.Whiteheading,
            border: Border.all(
color: AppColors.Grey,
            ),
            borderRadius: BorderRadius.circular(17.0),          ),
          child: Center(
            child: Text(
              '$_counter',
              style:h2size18black ,
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          color:buttonColor ,
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
