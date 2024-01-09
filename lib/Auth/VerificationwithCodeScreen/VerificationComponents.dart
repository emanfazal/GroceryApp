import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SelectlocationScreen/SelectLocation.dart';
import 'package:groceries_app_ui/Auth/VerificationwithCodeScreen/CodeInput.dart';

import '../../Components/FAB.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
class VerificationCodeComponents extends StatefulWidget {
  const VerificationCodeComponents({super.key});

  @override
  State<VerificationCodeComponents> createState() => _VerificationCodeComponentsState();
}

class _VerificationCodeComponentsState extends State<VerificationCodeComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(

crossAxisAlignment: CrossAxisAlignment.start,
      children: [
SizedBox(height: 30,),
        Text(AppStrings.Code,style:  h3size16kgrey,),
        SizedBox(height: 10,),
        CodeInputField(),
        SizedBox(height: 50,),
        Align(

            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Flexible(
                child: Row(
                  children: [
                    InkWell(child: Text(AppStrings.ResendCode,style:h2size18green,
                
                    ),
                        onTap: (){}
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Flexible(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionbutton(press: (){
                          NextScreen(context);
                        },),
                      ),
                    ),
                  ],
                ),
              ),
            )),

      ],
    );
  }
}
NextScreen(BuildContext context){
  Navigator.push(
    context ,
    MaterialPageRoute(builder: (context) =>SelectLocation()),
  );
}