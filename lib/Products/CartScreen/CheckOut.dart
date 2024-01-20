import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Config/assets.dart';

import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import '../../Order/AcceptedScreen.dart';
class YourBottomSheetContent extends StatefulWidget {
  @override
  State<YourBottomSheetContent> createState() => _YourBottomSheetContentState();
}

class _YourBottomSheetContentState extends State<YourBottomSheetContent> {
  @override
  // bool isContainerVisible=false;
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
                color: AppColors.white2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),

    ),
   child: Column(
     children: [
       Padding(padding: EdgeInsets.only(top: 30),
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Row(
               children: [
                 Text(AppStrings.Checkout,style: h2size24black,),
                 Spacer(),
                 IconButton(
                   onPressed: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context) => ExploreMain()));

                   },
                   icon: Icon(Icons.close),
                 )]),
           ),
               SizedBox(height: 20,),


           Container(
             height: 70,

             decoration: BoxDecoration(
               border: Border(
                 top: BorderSide(
                   color: AppColors.Grey,
                   width: 1.0, // You can adjust the width as needed
                 ),
               ),
             ),
             child:Row(
               children: [
                 Text(
                   AppStrings.Delivery,
                   style: h2size16black,
                 ),
                 Spacer(),
                 Text(AppStrings.SelectMethod,style:h2size16black ,),
                 SizedBox(width: 10,),

                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Icon(Icons.arrow_forward_ios
                       ),
                 ),
               ],

             ),

           ),

           Container(
             height: 70,
             decoration: BoxDecoration(
               border: Border(
                 top: BorderSide(
                   color: AppColors.Grey,
                   width: 1.0, // You can adjust the width as needed
                 ),
               ),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   AppStrings.Pament,
                   style: h2size16black,
                 ),
                 Spacer(),
SvgPicture.asset(AppIcons.PaymentCard),
                 SizedBox(width: 10,),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Icon(
                        Icons.arrow_forward_ios),
                 ),
               ],
             ),
           ),Container(
             height: 70,
             decoration: BoxDecoration(
               border: Border(
                 top: BorderSide(
                   color: AppColors.Grey,
                   width: 1.0, // You can adjust the width as needed
                 ),
               ),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   "Promo Code",
                   style: h2size16black,
                 ),
                 Spacer(),
                 Text("Pick discount",style:h2size16black ,),                 SizedBox(width: 10,),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Icon(
                        Icons.arrow_forward_ios),
                 ),
               ],
             ),
           ),

           Container(
           height: 70,
             decoration: BoxDecoration(
               border: Border(
                 top: BorderSide(
                   color: AppColors.Grey,
                   width: 1.0, // You can adjust the width as needed
                 ),
               ),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                  "Total Cost",
                   style: h2size16black,
                 ),
                 Spacer(),

                 Text("\$13.97",style:h2size16black ,),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Icon(
                        Icons.arrow_forward_ios),
                 ),
               ],
             ),
           ),
           Padding
             (
             padding: EdgeInsets.symmetric(vertical: 10),
             child: RichText(
               text: TextSpan(
                   text: 'By placing an order you agree to our',
                   style: h3size14black,
                   children: <TextSpan>[
                     TextSpan(text: 'Terms',
                         style:h2size14green ,
                         recognizer: TapGestureRecognizer()
                           ..onTap = () {

                             // Navigator.push(context,MaterialPageRoute(builder:(context) =>LoginWithEmail()));
                           }
                     ),
                     TextSpan(text: ' and ',
                       style:h3size14black ,

                     ),
                     TextSpan(text: 'Conditions',
                         style:h2size14green ,
                         recognizer: TapGestureRecognizer()
                           ..onTap = () {

                             // Navigator.push(context,MaterialPageRoute(builder:(context) =>LoginWithEmail()));
                           }
                     ),
                   ]
               ),
             ),
           ),
           PrimaryButton(text: AppStrings.PlaceOrder, textStyle:h2height18, press: (){
             Navigator.push(context,MaterialPageRoute(builder:(context) =>AcceptedScreen()));

           },),
             ],

       ),)
     ],
    ),
    ); }
}



