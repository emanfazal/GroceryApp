


import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Auth/LoginthroughNumber/EnterNumber.dart';
class CountryCode extends StatelessWidget {
  const CountryCode({Key? key});



  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        labelText: '',
        border: UnderlineInputBorder(),
      ),
      initialCountryCode:'PK',
      onSubmitted: (phone) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginWithNumber()),
        );
      },
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      controller: TextEditingController(),
    );
  }
}
