import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/EnterNumber.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({Key? key});

  @override
  Widget build(BuildContext context) {
    return  IntlPhoneField(
      decoration: InputDecoration(
        labelText: '',
        border: UnderlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(Icons.arrow_forward, color: AppColors.primaryColor),
          onPressed: () {

            Navigator.push(
              context ,
              MaterialPageRoute(builder: (context) =>LoginWithNumber()),
            );
          },
          color: Colors.blue,

        ),
      ),
      initialCountryCode: 'BD',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      controller: TextEditingController(),
    );
  }
}
