import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class CountryCode extends StatelessWidget {
  const CountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return  IntlPhoneField(
      decoration: InputDecoration(
        labelText: '',
        border: UnderlineInputBorder(),
      ),
      initialCountryCode: 'BD',
      onChanged: (phone) {
        print(phone.completeNumber);
      },

      controller: TextEditingController(),
    );
  }
}
