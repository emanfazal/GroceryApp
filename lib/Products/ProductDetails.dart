import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/Counter.dart';
import 'package:groceries_app_ui/Components/DropDownContainers.dart';

import '../Components/PrimaryButton.dart';
import '../Components/TopProductBar.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
import '../Screens/HomeScreen/HomeScreen.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({required this.itemName, required this.imagePath,required this.detail});
  final String itemName;
  final String imagePath;
final String detail;



  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final PageController _pageController = PageController();
  int selectedPage = 0;
  bool favorite=false;
  
  int _counter = 0;
  @override
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
          
                    borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
          
                  )
                ),
                height: 300,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
          
                  children: [
                    Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage, press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },),Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage, press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },),Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage, press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },),
                    
          
                  ],
                ),
          
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(widget.itemName,style: h1size26,),
                    SizedBox(width: 60),
                    IconButton(
                      icon: Icon(!favorite
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,color: AppColors.Grey,),
                      onPressed: () {
                        setState(
                              () {
                            favorite = !favorite;
                          },
                        );
                      },
                    ),                ],
          
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text( AppStrings.Itemdetail,style: h3size14grey),
              ),
              SizedBox(height: 20,),
             Row(
               children: [
                 Counter(),
          SizedBox(width:120),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Text(
                     AppStrings.Price,style: h2size24black,
                   ),
                 )
          
               ],
             ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 2,
                ),
                
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropDownContainers(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: PrimaryButton(text: AppStrings.Basket, textStyle:h2size18 , press:(){},),
              ),
            ],
          ),
        ),
      ),
    );
  }
}